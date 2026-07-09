import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widget réutilisable pour afficher du contenu technique (code, formule,
/// algorithme, commande, pseudo-code) dans les QCM et leurs résultats.
///
/// S'affiche automatiquement si [codeBlock] est non nul et non vide.
/// Utilise une police monospace (JetBrains Mono) et un fond distinct.
class TechBlockWidget extends StatelessWidget {
  final String? codeLanguage;
  final String? codeBlock;

  const TechBlockWidget({
    super.key,
    this.codeLanguage,
    this.codeBlock,
  });

  bool get hasContent => codeBlock != null && codeBlock!.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    if (!hasContent) return const SizedBox.shrink();

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final lang = codeLanguage?.trim().toLowerCase() ?? '';

    // Icône selon le type
    IconData icon;
    if (lang == 'latex' || lang == 'formula') {
      icon = Icons.functions_rounded;
    } else if (lang == 'command' || lang == 'bash' || lang == 'shell') {
      icon = Icons.terminal_rounded;
    } else if (lang == 'algorithm' || lang == 'pseudocode') {
      icon = Icons.account_tree_rounded;
    } else {
      icon = Icons.code_rounded;
    }

    // Étiquette du langage
    final label = _languageLabel(lang);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1A2E) : const Color(0xFFF5F5FA),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isDark ? const Color(0xFF3A3A4E) : const Color(0xFFE0E0E8),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header avec icône et langage
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF252540) : const Color(0xFFE8E8F0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
            ),
            child: Row(
              children: [
                Icon(icon, size: 16, color: theme.colorScheme.primary),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
          // Contenu technique
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
            child: SelectableText(
              codeBlock!.trim(),
              style: GoogleFonts.jetBrainsMono(
                fontSize: 13,
                height: 1.5,
                color: isDark ? const Color(0xFFE8E8E8) : const Color(0xFF1A1A2E),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _languageLabel(String lang) {
    switch (lang) {
      case 'python':
        return 'PYTHON';
      case 'javascript':
        return 'JAVASCRIPT';
      case 'typescript':
        return 'TYPESCRIPT';
      case 'dart':
        return 'DART';
      case 'java':
        return 'JAVA';
      case 'kotlin':
        return 'KOTLIN';
      case 'swift':
        return 'SWIFT';
      case 'c':
      case 'cpp':
      case 'c++':
        return 'C / C++';
      case 'csharp':
        return 'C#';
      case 'go':
        return 'GO';
      case 'rust':
        return 'RUST';
      case 'sql':
        return 'SQL';
      case 'html':
        return 'HTML';
      case 'css':
        return 'CSS';
      case 'bash':
      case 'shell':
      case 'command':
        return 'COMMANDE';
      case 'latex':
      case 'formula':
        return 'FORMULE';
      case 'algorithm':
        return 'ALGORITHME';
      case 'pseudocode':
        return 'PSEUDO-CODE';
      case 'json':
        return 'JSON';
      case 'yaml':
        return 'YAML';
      case 'xml':
        return 'XML';
      case 'text':
        return 'TEXTE';
      default:
        return lang.toUpperCase();
    }
  }
}
