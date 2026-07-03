import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

/// A widget that renders passage text with vocabulary words highlighted.
/// When a highlighted word is tapped, a tooltip showing its Turkish meaning appears.
class TappablePassageText extends StatefulWidget {
  final String passage;
  final Map<String, String> vocabMap; // english (lowercase) -> turkish
  final double fontSize;
  final double lineHeight;
  final Color textColor;

  const TappablePassageText({
    super.key,
    required this.passage,
    required this.vocabMap,
    this.fontSize = 15,
    this.lineHeight = 1.8,
    this.textColor = const Color(0xFFE2E8F0),
  });

  @override
  State<TappablePassageText> createState() => _TappablePassageTextState();
}

class _TappablePassageTextState extends State<TappablePassageText> {
  OverlayEntry? _overlayEntry;
  String? _activeWord;

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    if (_activeWord != null) {
      setState(() => _activeWord = null);
    }
  }

  void _showTooltip(BuildContext context, String english, String turkish, Offset globalPosition) {
    _removeOverlay();
    setState(() => _activeWord = english.toLowerCase());

    final overlay = Overlay.of(context);
    final screenSize = MediaQuery.of(context).size;

    _overlayEntry = OverlayEntry(
      builder: (ctx) {
        // Calculate position — show above the tapped word
        double left = globalPosition.dx - 80;
        double top = globalPosition.dy - 80;

        // Clamp to screen bounds
        if (left < 16) left = 16;
        if (left + 200 > screenSize.width - 16) left = screenSize.width - 216;
        if (top < 50) top = globalPosition.dy + 24; // show below if too close to top

        return Stack(
          children: [
            // Tap anywhere to dismiss
            Positioned.fill(
              child: GestureDetector(
                onTap: _removeOverlay,
                behavior: HitTestBehavior.opaque,
                child: Container(color: Colors.transparent),
              ),
            ),
            Positioned(
              left: left,
              top: top,
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOutCubic,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: 0.8 + (0.2 * value),
                    child: Opacity(opacity: value, child: child),
                  );
                },
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 260),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF1E293B),
                          Color(0xFF0F172A),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: AppTheme.primaryCyan.withValues(alpha: 0.4),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                        BoxShadow(
                          color: AppTheme.primaryCyan.withValues(alpha: 0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.translate_rounded,
                                color: AppTheme.primaryCyan, size: 16),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                english,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.primaryCyan,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppTheme.primaryCyan.withValues(alpha: 0.3),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          turkish,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.textPrimary,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Kapatmak için herhangi bir yere dokun',
                          style: GoogleFonts.inter(
                            fontSize: 9,
                            color: AppTheme.textMuted,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    overlay.insert(_overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: _buildTextSpan(context),
    );
  }

  TextSpan _buildTextSpan(BuildContext context) {
    final text = widget.passage;
    final vocabMap = widget.vocabMap;

    if (vocabMap.isEmpty) {
      return TextSpan(
        text: text,
        style: GoogleFonts.inter(
          fontSize: widget.fontSize,
          height: widget.lineHeight,
          color: widget.textColor,
        ),
      );
    }

    // Build a sorted list of vocab entries (longest first to avoid partial matches)
    final sortedEntries = vocabMap.entries.toList()
      ..sort((a, b) => b.key.length.compareTo(a.key.length));

    // Find all matches
    final List<_MatchInfo> matches = [];
    final lowerText = text.toLowerCase();

    for (final entry in sortedEntries) {
      final key = entry.key.toLowerCase();
      int startIndex = 0;
      while (true) {
        final idx = lowerText.indexOf(key, startIndex);
        if (idx == -1) break;

        // Ensure word boundary (not part of a larger word)
        final beforeOk = idx == 0 || !_isWordChar(lowerText[idx - 1]);
        final afterIdx = idx + key.length;
        final afterOk = afterIdx >= lowerText.length || !_isWordChar(lowerText[afterIdx]);

        if (beforeOk && afterOk) {
          // Check overlap with existing matches
          final overlaps = matches.any((m) =>
              (idx >= m.start && idx < m.end) || (afterIdx > m.start && afterIdx <= m.end));
          if (!overlaps) {
            matches.add(_MatchInfo(
              start: idx,
              end: afterIdx,
              english: text.substring(idx, afterIdx),
              turkish: entry.value,
            ));
          }
        }
        startIndex = idx + 1;
      }
    }

    // Sort matches by position
    matches.sort((a, b) => a.start.compareTo(b.start));

    if (matches.isEmpty) {
      return TextSpan(
        text: text,
        style: GoogleFonts.inter(
          fontSize: widget.fontSize,
          height: widget.lineHeight,
          color: widget.textColor,
        ),
      );
    }

    // Build spans
    final spans = <InlineSpan>[];
    int lastEnd = 0;

    final normalStyle = GoogleFonts.inter(
      fontSize: widget.fontSize,
      height: widget.lineHeight,
      color: widget.textColor,
    );

    for (final match in matches) {
      // Add normal text before this match
      if (match.start > lastEnd) {
        spans.add(TextSpan(
          text: text.substring(lastEnd, match.start),
          style: normalStyle,
        ));
      }

      // Add highlighted vocabulary word
      final isActive = _activeWord == match.english.toLowerCase();
      spans.add(TextSpan(
        text: match.english,
        style: GoogleFonts.inter(
          fontSize: widget.fontSize,
          height: widget.lineHeight,
          color: isActive ? const Color(0xFF0D9488) : AppTheme.primaryCyan,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
          decorationColor: AppTheme.primaryCyan.withValues(alpha: 0.4),
          decorationStyle: TextDecorationStyle.dotted,
          backgroundColor: isActive
              ? AppTheme.primaryCyan.withValues(alpha: 0.15)
              : AppTheme.primaryCyan.withValues(alpha: 0.06),
        ),
        recognizer: TapGestureRecognizer()
          ..onTapUp = (details) {
            _showTooltip(context, match.english, match.turkish, details.globalPosition);
          },
      ));

      lastEnd = match.end;
    }

    // Add remaining text
    if (lastEnd < text.length) {
      spans.add(TextSpan(
        text: text.substring(lastEnd),
        style: normalStyle,
      ));
    }

    return TextSpan(children: spans);
  }

  bool _isWordChar(String ch) {
    final code = ch.codeUnitAt(0);
    return (code >= 65 && code <= 90) ||  // A-Z
        (code >= 97 && code <= 122) ||     // a-z
        (code >= 48 && code <= 57) ||      // 0-9
        ch == '_' || ch == '-' || ch == '\'';
  }
}

class _MatchInfo {
  final int start;
  final int end;
  final String english;
  final String turkish;

  _MatchInfo({
    required this.start,
    required this.end,
    required this.english,
    required this.turkish,
  });
}
