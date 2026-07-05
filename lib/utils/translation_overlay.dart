import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/translate_service.dart';

class TranslationOverlay {
  static OverlayEntry? _overlayEntry;

  static void remove() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  static void show({
    required BuildContext context,
    required Offset globalPosition,
    required String text,
    required bool isSingleWord,
    String? initialTranslation,
    Map<String, String>? vocabMap,
  }) {
    remove(); // clear existing

    String currentTranslation = initialTranslation ?? (vocabMap?[text.toLowerCase()] ?? 'Çevriliyor...');
    bool isMounted = true;

    final overlay = Overlay.of(context);
    final screenSize = MediaQuery.of(context).size;

    _overlayEntry = OverlayEntry(
      builder: (ctx) {
        double left = globalPosition.dx - 100;
        double top = globalPosition.dy - 90;

        if (left < 16) left = 16;
        if (left + 280 > screenSize.width - 16) left = screenSize.width - 296;
        if (top < 50) top = globalPosition.dy + 24;

        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  isMounted = false;
                  remove();
                },
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
                    constraints: const BoxConstraints(maxWidth: 320),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: isSingleWord
                            ? [const Color(0xFF1E293B), const Color(0xFF0F172A)]
                            : [const Color(0xFF1A1A2E), const Color(0xFF16213E)],
                      ),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: isSingleWord
                            ? AppTheme.primaryCyan.withValues(alpha: 0.4)
                            : const Color(0xFFE040FB).withValues(alpha: 0.4),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
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
                            Icon(
                              isSingleWord ? Icons.translate_rounded : Icons.select_all_rounded,
                              color: isSingleWord ? AppTheme.primaryCyan : const Color(0xFFE040FB),
                              size: 16,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                text,
                                style: GoogleFonts.inter(
                                  fontSize: isSingleWord ? 14 : 13,
                                  fontWeight: FontWeight.w700,
                                  color: isSingleWord ? AppTheme.primaryCyan : const Color(0xFFE040FB),
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
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
                                (isSingleWord ? AppTheme.primaryCyan : const Color(0xFFE040FB)).withValues(alpha: 0.3),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        StatefulBuilder(builder: (context, setStateOverlay) {
                          // Allow async update to trigger rebuild
                          if (currentTranslation == 'Çevriliyor...') {
                            if (isSingleWord) {
                              TranslateService.translateWord(text).then((val) {
                                if (isMounted) {
                                  setStateOverlay(() {
                                    currentTranslation = val;
                                  });
                                }
                              });
                            } else {
                              TranslateService.translatePhrase(text).then((val) {
                                if (isMounted) {
                                  setStateOverlay(() {
                                    currentTranslation = val;
                                  });
                                }
                              });
                            }
                          }
                          return Text(
                            currentTranslation,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.textPrimary,
                              height: 1.4,
                            ),
                          );
                        }),
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
}
