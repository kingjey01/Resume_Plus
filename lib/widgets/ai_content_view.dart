import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_plus_clean/theme/app_theme.dart';

/// Widget pour afficher le contenu généré par l'IA de manière professionnelle.
/// Il nettoie les résidus Markdown, applique un style académique et gère la pagination.
class AiContentView extends StatefulWidget {
  final String content;
  final bool isSelectable;

  const AiContentView({
    super.key, 
    required this.content,
    this.isSelectable = true,
  });

  @override
  State<AiContentView> createState() => _AiContentViewState();
}

class _AiContentViewState extends State<AiContentView> {
  int _currentPage = 0;
  final List<String> _pages = [];
  static const int _charsPerPage = 1800; // Environ une page mobile

  @override
  void initState() {
    super.initState();
    _splitContent();
  }

  @override
  void didUpdateWidget(AiContentView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content != widget.content) {
      _splitContent();
    }
  }

  String _cleanMarkdown(String text) {
    // Sécurité supplémentaire pour nettoyer les résidus markdown
    return text
        .replaceAll('**', '')
        .replaceAll('###', '')
        .replaceAll('##', '')
        .replaceAll('#', '')
        .replaceAll('---', '')
        .replaceAll('___', '')
        .trim();
  }

  void _splitContent() {
    _pages.clear();
    if (widget.content.isEmpty) return;

    final cleanedContent = _cleanMarkdown(widget.content);

    // Si le texte est court, on ne fait qu'une page
    if (cleanedContent.length <= _charsPerPage + 200) {
      _pages.add(cleanedContent);
      return;
    }

    // Découpage intelligent par paragraphes
    final paragraphs = cleanedContent.split('\n\n');
    String currentBlock = "";

    for (var para in paragraphs) {
      if ((currentBlock.length + para.length) > _charsPerPage && currentBlock.isNotEmpty) {
        _pages.add(currentBlock.trim());
        currentBlock = para + "\n\n";
      } else {
        currentBlock += para + "\n\n";
      }
    }

    if (currentBlock.trim().isNotEmpty) {
      _pages.add(currentBlock.trim());
    }
    
    // Reset page if needed
    if (_currentPage >= _pages.length) {
      _currentPage = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.content.isEmpty) return const SizedBox.shrink();
    if (_pages.isEmpty) return const SizedBox.shrink();

    final pageContent = _pages[_currentPage];
    final lines = pageContent.split('\n');
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Contenu de la page
        ...lines.map((line) {
          final trimmedLine = line.trim();
          if (trimmedLine.isEmpty) return const SizedBox(height: 14);

          bool isTitle = _isTitle(trimmedLine);
          bool isBullet = trimmedLine.startsWith('•') || trimmedLine.startsWith('- ');

          if (isTitle) {
            final theme = Theme.of(context);
            return Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trimmedLine.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: theme.colorScheme.primary,
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 40,
                    height: 3,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            );
          }

          if (isBullet) {
            final theme = Theme.of(context);
            String bulletText = trimmedLine.replaceFirst('•', '').replaceFirst('- ', '').trim();
            return Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 12),
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: _buildText(bulletText, isBullet: true),
                  ),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: _buildText(trimmedLine),
          );
        }).toList(),

        // Navigation (si plus d'une page)
        if (_pages.length > 1) ...[
          const SizedBox(height: 32),
          const Divider(height: 1),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Bouton Précédent
              _buildNavButton(
                icon: Icons.arrow_back_ios_new_rounded,
                onPressed: _currentPage > 0 
                    ? () => setState(() => _currentPage--) 
                    : null,
              ),
              
              // Indicateur de page
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${_currentPage + 1} / ${_pages.length}',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),

              // Bouton Suivant
              _buildNavButton(
                icon: Icons.arrow_forward_ios_rounded,
                onPressed: _currentPage < _pages.length - 1 
                    ? () => setState(() => _currentPage++) 
                    : null,
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildNavButton({
    required IconData icon, 
    VoidCallback? onPressed,
  }) {
    final theme = Theme.of(context);
    final bool isDisabled = onPressed == null;
    final color = isDisabled ? theme.colorScheme.onSurface.withOpacity(0.3) : theme.colorScheme.primary;

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: color.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 16, color: color),
      ),
    );
  }

  Widget _buildText(String text, {bool isBullet = false}) {
    final theme = Theme.of(context);
    final style = GoogleFonts.poppins(
      fontSize: 15,
      height: 1.7,
      color: isBullet ? theme.colorScheme.onSurface.withOpacity(0.8) : theme.colorScheme.onSurface,
      fontWeight: isBullet ? FontWeight.w500 : FontWeight.w400,
    );

    if (widget.isSelectable) {
      return SelectableText(text, style: style);
    }
    return Text(text, style: style);
  }

  bool _isTitle(String line) {
    final upperLine = line.toUpperCase();
    if (RegExp(r'^[IVX]+\.\s').hasMatch(upperLine)) return true;
    
    final keywords = [
      'INTRODUCTION', 'CONCLUSION', 'DEVELOPPEMENT', 
      'POINTS IMPORTANTS', 'RESUME', 'NOTIONS CLES', 
      'EXPLICATIONS', 'SYNTHESE'
    ];
    
    for (var kw in keywords) {
      if (upperLine.contains(kw) && line.length < 40) return true;
    }
    
    if (line.length > 3 && line.length < 50 && line == upperLine && line.contains(RegExp(r'[A-Z]'))) {
      return true;
    }

    return false;
  }
}
