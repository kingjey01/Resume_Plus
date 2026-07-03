import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Données d'un brouillon audio.
class AudioDraft {
  final String id;
  String? audioFilePath; // chemin local du fichier (mobile)
  Uint8List? audioBytes; // bytes (web ou fallback)
  String? mimeType;
  String? fileName;
  int? courseId;
  String? courseName;
  String? title;
  double? price;
  int duration; // secondes
  DateTime createdAt;
  String? professeurNom;
  int? professeurId;

  AudioDraft({
    required this.id,
    this.audioFilePath,
    this.audioBytes,
    this.mimeType,
    this.fileName,
    this.courseId,
    this.courseName,
    this.title,
    this.price,
    this.duration = 0,
    DateTime? createdAt,
    this.professeurNom,
    this.professeurId,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toJson() => {
        'id': id,
        'audioFilePath': audioFilePath,
        'mimeType': mimeType,
        'fileName': fileName,
        'courseId': courseId,
        'courseName': courseName,
        'title': title,
        'price': price,
        'duration': duration,
        'createdAt': createdAt.toIso8601String(),
        'professeurNom': professeurNom,
        'professeurId': professeurId,
      };

  factory AudioDraft.fromJson(Map<String, dynamic> json) => AudioDraft(
        id: json['id'] as String? ?? '',
        audioFilePath: json['audioFilePath'] as String?,
        mimeType: json['mimeType'] as String?,
        fileName: json['fileName'] as String?,
        courseId: json['courseId'] as int?,
        courseName: json['courseName'] as String?,
        title: json['title'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        duration: json['duration'] as int? ?? 0,
        createdAt: json['createdAt'] != null
            ? DateTime.tryParse(json['createdAt'] as String) ?? DateTime.now()
            : DateTime.now(),
        professeurNom: json['professeurNom'] as String?,
        professeurId: json['professeurId'] as int?,
      );
}

/// Service de gestion des brouillons audio.
///
/// Sauvegarde locale :
/// - fichier audio → `getApplicationDocumentsDirectory()/drafts/`
/// - métadonnées → SharedPreferences (JSON)
///
/// Le brouillon est supprimé après un envoi réussi ou une suppression volontaire.
class AudioDraftService {
  static const String _draftKey = 'audio_draft_metadata';
  static const String _draftDir = 'drafts';

  // ─── Singleton ──────────────────────────────────────────────────
  static final AudioDraftService _instance = AudioDraftService._internal();
  factory AudioDraftService() => _instance;
  AudioDraftService._internal();

  // ─── Sauvegarder un brouillon ───────────────────────────────────

  /// Sauvegarde un brouillon audio complet (fichier + métadonnées).
  Future<void> saveDraft(AudioDraft draft) async {
    // 1) Sauvegarder le fichier audio si présent
    if (draft.audioBytes != null && draft.audioFilePath == null) {
      final filePath = await _writeAudioFile(
        draft.audioBytes!,
        draft.fileName ?? 'recording_${draft.id}.m4a',
      );
      draft.audioFilePath = filePath;
    }

    // 2) Sauvegarder les métadonnées
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_draftKey, jsonEncode(draft.toJson()));

    print('💾 AudioDraft: brouillon sauvegardé (${draft.fileName})');
  }

  /// Sauvegarde juste les métadonnées (sans fichier audio).
  Future<void> saveDraftMetadata(AudioDraft draft) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_draftKey, jsonEncode(draft.toJson()));
  }

  // ─── Restaurer un brouillon ─────────────────────────────────────

  /// Récupère le dernier brouillon (métadonnées).
  Future<AudioDraft?> loadDraftMetadata() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_draftKey);
    if (json == null) return null;

    try {
      return AudioDraft.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } catch (e) {
      print('⚠️ AudioDraft: erreur lecture métadonnées: $e');
      return null;
    }
  }

  /// Récupère les bytes audio du brouillon depuis le fichier local.
  Future<Uint8List?> loadDraftAudio() async {
    final draft = await loadDraftMetadata();
    if (draft == null) return null;

    // Si déjà en mémoire
    if (draft.audioBytes != null) return draft.audioBytes;

    // Si chemin fichier
    if (draft.audioFilePath != null) {
      try {
        final file = File(draft.audioFilePath!);
        if (await file.exists()) {
          return await file.readAsBytes();
        }
      } catch (e) {
        print('⚠️ AudioDraft: erreur lecture fichier: $e');
      }
    }

    return null;
  }

  // ─── Supprimer un brouillon ─────────────────────────────────────

  /// Supprime le brouillon (fichier + métadonnées).
  Future<void> deleteDraft() async {
    // 1) Récupérer les métadonnées pour avoir le chemin du fichier
    final draft = await loadDraftMetadata();

    // 2) Supprimer le fichier audio
    if (draft?.audioFilePath != null) {
      try {
        final file = File(draft!.audioFilePath!);
        if (await file.exists()) {
          await file.delete();
          print('🗑️ AudioDraft: fichier supprimé');
        }
      } catch (e) {
        print('⚠️ AudioDraft: erreur suppression fichier: $e');
      }
    }

    // 3) Supprimer les métadonnées
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_draftKey);
    print('🗑️ AudioDraft: métadonnées supprimées');
  }

  /// Vérifie si un brouillon existe.
  Future<bool> hasDraft() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_draftKey);
  }

  // ─── Helper fichier ─────────────────────────────────────────────

  Future<String> _writeAudioFile(Uint8List bytes, String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    final draftDir = Directory('${dir.path}/$_draftDir');
    if (!await draftDir.exists()) {
      await draftDir.create(recursive: true);
    }

    final file = File('${draftDir.path}/$fileName');
    await file.writeAsBytes(bytes);
    print('💾 AudioDraft: fichier écrit (${file.path})');
    return file.path;
  }
}
