import 'package:flutter/material.dart';
import 'package:resume_plus_clean/services/text_to_speech_service.dart';

/// Widget pour lire un texte à voix haute
class TtsReaderWidget extends StatefulWidget {
  final String text;
  final String? title;
  final bool showControls;
  final bool compact;

  const TtsReaderWidget({
    super.key,
    required this.text,
    this.title,
    this.showControls = true,
    this.compact = false,
  });

  @override
  State<TtsReaderWidget> createState() => _TtsReaderWidgetState();
}

class _TtsReaderWidgetState extends State<TtsReaderWidget> {
  final TextToSpeechService _tts = TextToSpeechService();
  bool _isSpeaking = false;
  bool _isInitialized = false;
  double _rate = 1.0;

  @override
  void initState() {
    super.initState();
    _initTts();
  }

  Future<void> _initTts() async {
    final success = await _tts.initialize();
    setState(() {
      _isInitialized = success;
    });

    _tts.onStart = () {
      setState(() {
        _isSpeaking = true;
      });
    };

    _tts.onComplete = () {
      setState(() {
        _isSpeaking = false;
      });
    };

    _tts.onError = (error) {
      setState(() {
        _isSpeaking = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur TTS: $error'), backgroundColor: Colors.red),
      );
    };
  }

  Future<void> _toggleSpeech() async {
    if (_isSpeaking) {
      await _tts.stop();
      setState(() {
        _isSpeaking = false;
      });
    } else {
      final textToRead = widget.title != null 
          ? '${widget.title}. ${widget.text}'
          : widget.text;
      await _tts.speak(textToRead);
    }
  }

  void _changeRate(double newRate) {
    setState(() {
      _rate = newRate;
    });
    _tts.setRate(newRate);
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.compact) {
      return _buildCompactButton();
    }
    return _buildFullControls();
  }

  Widget _buildCompactButton() {
    return IconButton(
      onPressed: _isInitialized ? _toggleSpeech : null,
      icon: Icon(
        _isSpeaking ? Icons.stop_circle : Icons.volume_up,
        color: _isSpeaking ? Colors.red : Theme.of(context).primaryColor,
      ),
      tooltip: _isSpeaking ? 'Arrêter la lecture' : 'Lire à voix haute',
    );
  }

  Widget _buildFullControls() {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.record_voice_over, color: theme.primaryColor),
                const SizedBox(width: 8),
                Text(
                  'Lecture vocale',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (!_isInitialized)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            
            // Bouton principal
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _isInitialized ? _toggleSpeech : null,
                    icon: Icon(_isSpeaking ? Icons.stop : Icons.play_arrow),
                    label: Text(_isSpeaking ? 'Arrêter' : 'Lire le résumé'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isSpeaking ? Colors.red : theme.primaryColor,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            
            if (widget.showControls) ...[
              const SizedBox(height: 12),
              
              // Contrôle de vitesse
              Row(
                children: [
                  const Icon(Icons.speed, size: 18),
                  const SizedBox(width: 8),
                  const Text('Vitesse:'),
                  Expanded(
                    child: Slider(
                      value: _rate,
                      min: 0.5,
                      max: 2.0,
                      divisions: 6,
                      label: '${_rate.toStringAsFixed(1)}x',
                      onChanged: _changeRate,
                    ),
                  ),
                  Text('${_rate.toStringAsFixed(1)}x'),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Bouton simple pour la lecture vocale (à utiliser dans les listes)
class TtsButton extends StatefulWidget {
  final String text;
  final double size;

  const TtsButton({
    super.key,
    required this.text,
    this.size = 24,
  });

  @override
  State<TtsButton> createState() => _TtsButtonState();
}

class _TtsButtonState extends State<TtsButton> {
  final TextToSpeechService _tts = TextToSpeechService();
  bool _isSpeaking = false;

  @override
  void initState() {
    super.initState();
    _tts.initialize();
    
    _tts.onStart = () => setState(() => _isSpeaking = true);
    _tts.onComplete = () => setState(() => _isSpeaking = false);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: widget.size,
      onPressed: () async {
        if (_isSpeaking) {
          await _tts.stop();
        } else {
          await _tts.speak(widget.text);
        }
      },
      icon: Icon(
        _isSpeaking ? Icons.stop_circle : Icons.volume_up,
        color: _isSpeaking ? Colors.red : Theme.of(context).primaryColor,
      ),
      tooltip: _isSpeaking ? 'Arrêter' : 'Lire',
    );
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }
}
