import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'web_audio_service.dart';

/// Service audio unifié qui utilise la bonne implémentation selon la plateforme
class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  FlutterTts? _flutterTts;
  WebAudioService? _webAudioService;
  bool _isInitialized = false;

  // État de la lecture
  bool _isPlaying = false;
  bool _isPaused = false;
  String? _currentText;
  
  // Paramètres TTS actuels (conservés pour pause/resume)
  double _currentRate = 0.8;
  double _currentPitch = 1.0;
  double _currentVolume = 1.0;
  String _currentLanguage = 'fr-FR';
  
  // Gestion des chunks pour les longs textes
  List<String> _chunks = [];
  int _currentChunkIndex = 0;
  bool _isReadingChunks = false;

  // Callbacks pour les événements
  VoidCallback? onStart;
  VoidCallback? onComplete;
  VoidCallback? onPause;
  VoidCallback? onResume;
  Function(String)? onError;

  /// Initialise le service audio
  /// Garantit de ne JAMAIS bloquer plus de 5 secondes
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      if (kIsWeb) {
        // Sur le web, utiliser WebAudioService
        _webAudioService = WebAudioService();
        final success = await _webAudioService!.initialize().timeout(
          const Duration(seconds: 5),
          onTimeout: () {
            print('⏱️ AudioService Web: timeout init');
            return false;
          },
        );
        
        if (success) {
          _setupWebCallbacks();
          _isInitialized = true;
          print('✅ AudioService: Initialisé pour le web');
          return true;
        }
        return false;
      } else {
        // Sur mobile/desktop, utiliser FlutterTts
        _flutterTts = FlutterTts();
        
        // Configurer les callbacks AVANT toute autre opération
        // (ainsi le service est utilisable même si l'optimisation échoue)
        _setupFlutterTtsCallbacks();
        
        // Optimiser le moteur (avec timeout pour ne jamais bloquer)
        await _optimizeTtsEngine().timeout(
          const Duration(seconds: 5),
          onTimeout: () {
            print('⏱️ AudioService: timeout sur _optimizeTtsEngine — utilisation des paramètres par défaut');
          },
        );
        
        _isInitialized = true;
        print('✅ AudioService: Initialisé pour mobile/desktop avec TTS');
        return true;
      }
    } catch (e) {
      print('❌ AudioService: Erreur d\'initialisation: $e');
      // Même en cas d'erreur, si _flutterTts existe, on considère le service utilisable
      if (!kIsWeb && _flutterTts != null) {
        _isInitialized = true;
        print('⚠️ AudioService: Init avec moteur par défaut (erreur ignorée)');
        return true;
      }
    }

    return false;
  }

  /// Liste et sélectionne le meilleur moteur TTS pour éviter les crashs
  /// Toutes les opérations sont indépendamment protégées par try/catch
  Future<void> _optimizeTtsEngine() async {
    if (_flutterTts == null || kIsWeb) return;

    if (defaultTargetPlatform != TargetPlatform.android) return;

    // 1. Tenter de lister les moteurs (peut échouer sur Android 11+ sans queries)
    try {
      final engines = await _flutterTts!.getEngines;
      if (engines is List && engines.isNotEmpty) {
        print('ℹ️ AudioService: Moteurs TTS disponibles: $engines');
        
        // Préférer Google TTS, éviter Pico
        String? bestEngine;
        for (var engine in engines) {
          final e = engine.toString().toLowerCase();
          if (e.contains('google')) {
            bestEngine = engine.toString();
            break;
          }
        }
        // Fallback : Samsung TTS si pas de Google
        if (bestEngine == null) {
          for (var engine in engines) {
            final e = engine.toString().toLowerCase();
            if (e.contains('samsung') || e.contains('smt')) {
              bestEngine = engine.toString();
              break;
            }
          }
        }

        if (bestEngine != null) {
          try {
            await _flutterTts!.setEngine(bestEngine);
            print('✅ AudioService: Moteur sélectionné: $bestEngine');
          } catch (e) {
            print('⚠️ AudioService: setEngine a échoué, moteur par défaut conservé: $e');
          }
        } else {
          print('⚠️ AudioService: Aucun moteur préféré trouvé, moteur par défaut');
        }
      }
    } catch (e) {
      print('⚠️ AudioService: getEngines a échoué (Android 11+ queries manquantes?): $e');
    }
    
    // 2. Paramètres de stabilité (chacun protégé indépendamment)
    try {
      await _flutterTts!.awaitSpeakCompletion(true);
    } catch (e) {
      print('⚠️ AudioService: awaitSpeakCompletion failed: $e');
    }
    try {
      await _flutterTts!.setSilence(100);
    } catch (e) {
      print('⚠️ AudioService: setSilence failed: $e');
    }
  }

  /// Configure les callbacks pour WebAudioService
  void _setupWebCallbacks() {
    if (_webAudioService == null) return;

    _webAudioService!.onStart = () {
      _isPlaying = true;
      _isPaused = false;
      onStart?.call();
    };

    _webAudioService!.onComplete = () {
      _isPlaying = false;
      _isPaused = false;
      _currentText = null;
      onComplete?.call();
    };

    _webAudioService!.onPause = () {
      _isPaused = true;
      onPause?.call();
    };

    _webAudioService!.onResume = () {
      _isPaused = false;
      onResume?.call();
    };

    _webAudioService!.onError = (error) {
      _isPlaying = false;
      _isPaused = false;
      _currentText = null;
      onError?.call(error);
    };
  }

  /// Configure les callbacks pour FlutterTts
  void _setupFlutterTtsCallbacks() {
    if (_flutterTts == null) return;

    _flutterTts!.setStartHandler(() {
      _isPlaying = true;
      _isPaused = false;
      onStart?.call();
    });

    _flutterTts!.setCompletionHandler(() {
      // Si on lit des chunks, passer au suivant
      if (_isReadingChunks && _currentChunkIndex < _chunks.length - 1) {
        _currentChunkIndex++;
        _speakNextChunk();
      } else {
        // Lecture terminée
        _isPlaying = false;
        _isPaused = false;
        _currentText = null;
        _chunks = [];
        _currentChunkIndex = 0;
        _isReadingChunks = false;
        onComplete?.call();
      }
    });

    _flutterTts!.setPauseHandler(() {
      _isPaused = true;
      onPause?.call();
    });

    _flutterTts!.setContinueHandler(() {
      _isPaused = false;
      onResume?.call();
    });

    _flutterTts!.setErrorHandler((msg) {
      print('⚠️ AudioService TTS error: $msg');
      final msgStr = msg.toString().toLowerCase();
      // Ignorer les erreurs bénignes (arrêt volontaire, interruption système)
      final isBenign = msgStr.contains('interrupted') ||
          msgStr.contains('stopped') ||
          msgStr.contains('canceled') ||
          msgStr.contains('cancelled') ||
          msgStr.contains('1') && msgStr.length < 5; // code d'erreur Android -1
      _isPlaying = false;
      _isPaused = false;
      if (!isBenign) {
        _currentText = null;
        _chunks = [];
        _currentChunkIndex = 0;
        _isReadingChunks = false;
        onError?.call(msg);
      } else {
        print('ℹ️ AudioService: Erreur bénigne ignorée: $msg');
        onComplete?.call();
      }
    });

    // Configuration par défaut pour FlutterTts
    _flutterTts!.setLanguage(_currentLanguage);
    _flutterTts!.setSpeechRate(_currentRate);
    _flutterTts!.setVolume(_currentVolume);
    _flutterTts!.setPitch(_currentPitch);
  }
  
  /// Lit le chunk suivant (appelé par le completionHandler)
  Future<void> _speakNextChunk() async {
    if (!_isPlaying || _isPaused || _currentChunkIndex >= _chunks.length) {
      return;
    }
    
    try {
      final chunk = _chunks[_currentChunkIndex];
      print('📣 AudioService: Lecture chunk ${_currentChunkIndex + 1}/${_chunks.length}');
      await _flutterTts!.speak(chunk);
    } catch (e) {
      print('⚠️ AudioService: Erreur chunk ${_currentChunkIndex}: $e');
      // Tenter le chunk suivant
      if (_currentChunkIndex < _chunks.length - 1) {
        _currentChunkIndex++;
        await _speakNextChunk();
      }
    }
  }

  /// Vérifie si le service est disponible
  bool get isAvailable => _isInitialized;

  /// Vérifie si la lecture est en cours
  bool get isPlaying => _isPlaying && !_isPaused;

  /// Vérifie si la lecture est en pause
  bool get isPaused => _isPaused;

  /// Obtient le texte actuellement lu
  String? get currentText => _currentText;

  String _cleanTextForTTS(String text) {
    // Supprime le formatage markdown (symboles, liens) pour une lecture fluide et sans plantage
    return text
        .replaceAll(RegExp(r'[#*_\-`~>]'), ' ')
        .replaceAll(RegExp(r'\[.*?\]'), ' ')
        .replaceAll(RegExp(r'\(.*?\)' ), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  /// Réinitialise le moteur TTS en cas de crash (reset silencieux)
  Future<void> _reinitIfNeeded() async {
    if (_isInitialized) return;
    print('🔄 AudioService: Tentative de réinitialisation après crash...');
    _isInitialized = false;
    _flutterTts = null;
    await initialize();
  }

  /// Démarre la lecture du texte avec gestion intelligente du découpage (chunking)
  Future<void> speak(String text, {
    double rate = 0.8,
    double pitch = 1.0,
    double volume = 1.0,
    String language = 'fr-FR',
  }) async {
    if (!isAvailable) {
      // Tentative de réinitialisation silencieuse avant d'afficher une erreur
      await _reinitIfNeeded();
      if (!isAvailable) {
        onError?.call('Service audio non disponible');
        return;
      }
    }

    try {
      // Arrêter toute lecture en cours
      await stop();

      final cleanText = _cleanTextForTTS(text);
      if (cleanText.isEmpty) return;
      
      _currentText = cleanText;
      _isPlaying = true;
      _isPaused = false;
      
      // Sauvegarder les paramètres pour pause/resume
      _currentRate = rate;
      _currentPitch = pitch;
      _currentVolume = volume;
      _currentLanguage = language;

      if (kIsWeb && _webAudioService != null) {
        // Utiliser WebAudioService pour le web
        await _webAudioService!.speak(
          cleanText,
          rate: rate,
          pitch: pitch,
          volume: volume,
          language: language,
        );
      } else if (_flutterTts != null) {
        // Configurer les paramètres TTS UNE SEULE FOIS avant la lecture
        await _flutterTts!.setLanguage(language);
        await _flutterTts!.setSpeechRate(rate);
        await _flutterTts!.setPitch(pitch);
        await _flutterTts!.setVolume(volume);

        // Découper le texte en morceaux de max 1000 caractères
        // Pico TTS et même Google TTS peuvent crasher sur de trop longs textes
        _chunks = _splitTextIntoChunks(cleanText, 1000);
        _currentChunkIndex = 0;
        _isReadingChunks = _chunks.length > 1;
        
        print('📣 AudioService: Lecture en ${_chunks.length} morceaux (rate=$rate)');

        // Lancer la lecture du premier chunk
        // Les chunks suivants seront lus via le completionHandler
        await _speakNextChunk();
      }
    } catch (e) {
      print('❌ AudioService: Erreur lors de la lecture: $e');
      _isPlaying = false;
      _chunks = [];
      _currentChunkIndex = 0;
      _isReadingChunks = false;
      // Réinitialiser le moteur pour la prochaine tentative
      _isInitialized = false;
      onError?.call('Erreur lors de la lecture: $e');
    }
  }

  /// Découpe le texte en morceaux respectant les limites des moteurs TTS
  List<String> _splitTextIntoChunks(String text, int maxChunkSize) {
    if (text.length <= maxChunkSize) return [text];

    List<String> chunks = [];
    int start = 0;
    
    while (start < text.length) {
      int end = start + maxChunkSize;
      if (end >= text.length) {
        chunks.add(text.substring(start));
        break;
      }

      // Chercher une ponctuation pour couper proprement
      String sub = text.substring(start, end);
      int lastPunct = sub.lastIndexOf(RegExp(r'[.!?;\n]'));
      
      if (lastPunct != -1 && lastPunct > maxChunkSize ~/ 2) {
        end = start + lastPunct + 1;
      } else {
        // Sinon chercher un espace
        int lastSpace = sub.lastIndexOf(' ');
        if (lastSpace != -1) {
          end = start + lastSpace + 1;
        }
      }
      
      chunks.add(text.substring(start, end).trim());
      start = end;
    }
    
    return chunks.where((c) => c.isNotEmpty).toList();
  }

  /// Met en pause la lecture
  Future<void> pause() async {
    if (!isAvailable || !_isPlaying || _isPaused) return;

    try {
      if (kIsWeb && _webAudioService != null) {
        await _webAudioService!.pause();
      } else if (_flutterTts != null) {
        await _flutterTts!.pause();
        // Sur Android certains moteurs ne supportent pas pause() → stop() silencieux
        _isPaused = true;
        onPause?.call();
      }
    } catch (e) {
      print('⚠️ AudioService: pause() non supporté sur ce moteur, arrêt silencieux: $e');
      // Stopper proprement sans afficher d'erreur à l'utilisateur
      try { await _flutterTts?.stop(); } catch (_) {}
      _isPlaying = false;
      _isPaused = true;
      onPause?.call();
    }
  }

  /// Reprend la lecture
  Future<void> resume() async {
    if (!isAvailable || !_isPaused) return;

    try {
      if (kIsWeb && _webAudioService != null) {
        await _webAudioService!.resume();
      } else if (_flutterTts != null) {
        if (_currentText != null && _chunks.isNotEmpty) {
          print('📣 AudioService: Reprise au chunk ${_currentChunkIndex + 1}/${_chunks.length}');
          _isPaused = false;
          _isPlaying = true;
          // Reconfigurer les paramètres au cas où le moteur aurait été réinitialisé
          try {
            await _flutterTts!.setLanguage(_currentLanguage);
            await _flutterTts!.setSpeechRate(_currentRate);
            await _flutterTts!.setPitch(_currentPitch);
            await _flutterTts!.setVolume(_currentVolume);
          } catch (_) {}
          await _speakNextChunk();
        } else if (_currentText != null) {
          // Chunks vides mais texte disponible → relancer depuis le début
          print('📣 AudioService: Reprise impossible (chunks vides) → relance depuis le début');
          _isPaused = false;
          _isPlaying = false;
          await speak(_currentText!, rate: _currentRate, pitch: _currentPitch, volume: _currentVolume, language: _currentLanguage);
        }
      }
    } catch (e) {
      print('⚠️ AudioService: Erreur lors de la reprise, nouvelle tentative: $e');
      // En cas d'échec de reprise, relancer depuis le début du chunk courant
      if (_currentText != null) {
        _isPaused = false;
        _isPlaying = false;
        await speak(_currentText!, rate: _currentRate, pitch: _currentPitch, volume: _currentVolume, language: _currentLanguage);
      }
    }
  }

  /// Arrête la lecture
  Future<void> stop() async {
    if (!isAvailable) return;

    try {
      if (kIsWeb && _webAudioService != null) {
        await _webAudioService!.stop();
      } else if (_flutterTts != null) {
        await _flutterTts!.stop();
      }

      _isPlaying = false;
      _isPaused = false;
      _currentText = null;
      _chunks = [];
      _currentChunkIndex = 0;
      _isReadingChunks = false;
    } catch (e) {
      print('❌ AudioService: Erreur lors de l\'arrêt: $e');
      onError?.call('Erreur lors de l\'arrêt: $e');
    }
  }

  /// Obtient la liste des voix disponibles
  Future<List<Map<String, String>>> getAvailableVoices() async {
    if (!isAvailable) return [];

    try {
      if (kIsWeb && _webAudioService != null) {
        return _webAudioService!.getAvailableVoices();
      } else if (_flutterTts != null) {
        final voices = await _flutterTts!.getVoices;
        if (voices is List) {
          return voices.map((voice) => {
            'name': voice['name']?.toString() ?? '',
            'locale': voice['locale']?.toString() ?? '',
          }).toList();
        }
      }
    } catch (e) {
      print('❌ AudioService: Erreur lors de la récupération des voix: $e');
    }

    return [];
  }

  /// Obtient les voix françaises disponibles
  Future<List<Map<String, String>>> getFrenchVoices() async {
    final voices = await getAvailableVoices();
    return voices.where((voice) => 
      voice['locale']?.startsWith('fr') == true || 
      voice['lang']?.startsWith('fr') == true
    ).toList();
  }

  /// Nettoie le service
  void dispose() {
    stop();
    _webAudioService?.dispose();
    _flutterTts = null;
    _webAudioService = null;
    _isInitialized = false;
    
    onStart = null;
    onComplete = null;
    onPause = null;
    onResume = null;
    onError = null;
  }
}