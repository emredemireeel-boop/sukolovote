import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/translate_service.dart';

/// A widget that renders passage text where every word is tappable.
/// - Tap a word: shows single-word translation.
/// - Long-press + drag: selects a range of words and shows phrase translation.
class TappablePassageText extends StatefulWidget {
  final String passage;
  final Map<String, String> vocabMap;
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

class _Token {
  final String text;
  final bool isWord;
  final int wordIndex; // -1 if not a word
  _Token({required this.text, required this.isWord, required this.wordIndex});
}

class _TappablePassageTextState extends State<TappablePassageText> {
  OverlayEntry? _overlayEntry;
  String? _activeWord;
  String _currentTranslation = '';

  // For selection via long-press + drag
  bool _isDragging = false;
  int _dragStartWordIndex = -1;
  int _dragEndWordIndex = -1;
  List<_Token> _tokens = [];
  List<String> _wordList = []; // only word tokens, ordered
  final GlobalKey _richTextKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _parseTokens();
  }

  @override
  void didUpdateWidget(covariant TappablePassageText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.passage != widget.passage) {
      _parseTokens();
    }
  }

  void _parseTokens() {
    _tokens = [];
    _wordList = [];
    final RegExp wordRegExp = RegExp(r"([a-zA-Z0-9_'-]+)|([^a-zA-Z0-9_'-]+)");
    final matches = wordRegExp.allMatches(widget.passage);
    int wordIdx = 0;
    for (final match in matches) {
      final String token = match.group(0)!;
      final bool isWord = match.group(1) != null;
      if (isWord) {
        _tokens.add(_Token(text: token, isWord: true, wordIndex: wordIdx));
        _wordList.add(token);
        wordIdx++;
      } else {
        _tokens.add(_Token(text: token, isWord: false, wordIndex: -1));
      }
    }
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    if (_activeWord != null || _isDragging) {
      setState(() {
        _activeWord = null;
        _isDragging = false;
        _dragStartWordIndex = -1;
        _dragEndWordIndex = -1;
      });
    }
  }

  Set<int> get _selectedWordIndices {
    if (_dragStartWordIndex < 0 || _dragEndWordIndex < 0) return {};
    final start = _dragStartWordIndex < _dragEndWordIndex
        ? _dragStartWordIndex
        : _dragEndWordIndex;
    final end = _dragStartWordIndex < _dragEndWordIndex
        ? _dragEndWordIndex
        : _dragStartWordIndex;
    return Set<int>.from(List.generate(end - start + 1, (i) => start + i));
  }

  String get _selectedPhrase {
    final indices = _selectedWordIndices;
    if (indices.isEmpty) return '';
    final sortedIndices = indices.toList()..sort();
    return sortedIndices.map((i) => _wordList[i]).join(' ');
  }

  void _showTooltip(BuildContext context, String english, Offset globalPosition) async {
    _removeOverlay();
    setState(() {
      _activeWord = english.toLowerCase();
      _currentTranslation = widget.vocabMap[english.toLowerCase()] ?? 'Çevriliyor...';
    });

    _insertOverlay(context, english, globalPosition, isSingleWord: true);

    if (!widget.vocabMap.containsKey(english.toLowerCase())) {
      final trans = await TranslateService.translateWord(english);
      if (mounted && _activeWord == english.toLowerCase()) {
        setState(() {
          _currentTranslation = trans;
        });
        _overlayEntry?.markNeedsBuild();
      }
    }
  }

  void _showPhraseTooltip(BuildContext context, String phrase, Offset globalPosition) async {
    _overlayEntry?.remove();
    _overlayEntry = null;

    setState(() {
      _currentTranslation = 'Çevriliyor...';
    });

    _insertOverlay(context, phrase, globalPosition, isSingleWord: false);

    final trans = await TranslateService.translatePhrase(phrase);
    if (mounted && _isDragging) {
      setState(() {
        _currentTranslation = trans;
      });
      _overlayEntry?.markNeedsBuild();
    }
  }

  void _insertOverlay(BuildContext context, String displayText, Offset globalPosition,
      {required bool isSingleWord}) {
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
                              isSingleWord
                                  ? Icons.translate_rounded
                                  : Icons.select_all_rounded,
                              color: isSingleWord
                                  ? AppTheme.primaryCyan
                                  : const Color(0xFFE040FB),
                              size: 16,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                displayText,
                                style: GoogleFonts.inter(
                                  fontSize: isSingleWord ? 14 : 13,
                                  fontWeight: FontWeight.w700,
                                  color: isSingleWord
                                      ? AppTheme.primaryCyan
                                      : const Color(0xFFE040FB),
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
                                (isSingleWord
                                        ? AppTheme.primaryCyan
                                        : const Color(0xFFE040FB))
                                    .withValues(alpha: 0.3),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        StatefulBuilder(builder: (context, setStateOverlay) {
                          return Text(
                            _currentTranslation,
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

  int? _wordIndexAtOffset(Offset globalPosition) {
    final renderObj = _richTextKey.currentContext?.findRenderObject();
    if (renderObj == null || renderObj is! RenderBox) return null;
    final localPos = renderObj.globalToLocal(globalPosition);

    // Get the RenderParagraph from the RenderBox
    final renderParagraph = _findRenderParagraph(renderObj);
    if (renderParagraph == null) return null;

    final textPos = renderParagraph.getPositionForOffset(localPos);
    final offset = textPos.offset;

    // Map the character offset to a word index
    int charCount = 0;
    for (final token in _tokens) {
      final end = charCount + token.text.length;
      if (offset >= charCount && offset < end) {
        return token.isWord ? token.wordIndex : null;
      }
      charCount = end;
    }
    return null;
  }

  RenderParagraph? _findRenderParagraph(RenderObject obj) {
    if (obj is RenderParagraph) return obj;
    RenderParagraph? result;
    obj.visitChildren((child) {
      result ??= _findRenderParagraph(child);
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        final wordIdx = _wordIndexAtOffset(details.globalPosition);
        if (wordIdx != null) {
          setState(() {
            _isDragging = true;
            _dragStartWordIndex = wordIdx;
            _dragEndWordIndex = wordIdx;
            _activeWord = null;
          });
        }
      },
      onLongPressMoveUpdate: (details) {
        if (!_isDragging) return;
        final wordIdx = _wordIndexAtOffset(details.globalPosition);
        if (wordIdx != null && wordIdx != _dragEndWordIndex) {
          setState(() {
            _dragEndWordIndex = wordIdx;
          });
        }
      },
      onLongPressEnd: (details) {
        if (!_isDragging) return;
        final phrase = _selectedPhrase;
        if (phrase.isNotEmpty) {
          _showPhraseTooltip(context, phrase, details.globalPosition);
        }
      },
      child: RichText(
        key: _richTextKey,
        text: _buildTextSpan(context),
      ),
    );
  }

  TextSpan _buildTextSpan(BuildContext context) {
    final spans = <InlineSpan>[];
    final selected = _selectedWordIndices;

    final normalStyle = GoogleFonts.inter(
      fontSize: widget.fontSize,
      height: widget.lineHeight,
      color: widget.textColor,
    );

    for (final token in _tokens) {
      if (token.isWord) {
        final lowerToken = token.text.toLowerCase();
        final inVocab = widget.vocabMap.containsKey(lowerToken);
        final isActive = _activeWord == lowerToken;
        final isSelected = selected.contains(token.wordIndex);

        TextStyle wordStyle;
        if (isSelected) {
          // Drag-selected style (purple highlight)
          wordStyle = GoogleFonts.inter(
            fontSize: widget.fontSize,
            height: widget.lineHeight,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            backgroundColor: const Color(0xFFE040FB).withValues(alpha: 0.35),
          );
        } else if (inVocab) {
          wordStyle = GoogleFonts.inter(
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
          );
        } else if (isActive) {
          wordStyle = normalStyle.copyWith(
            color: AppTheme.primaryCyan,
            backgroundColor: AppTheme.primaryCyan.withValues(alpha: 0.15),
          );
        } else {
          wordStyle = normalStyle;
        }

        spans.add(TextSpan(
          text: token.text,
          style: wordStyle,
          recognizer: TapGestureRecognizer()
            ..onTapUp = (details) {
              if (!_isDragging) {
                _showTooltip(context, token.text, details.globalPosition);
              }
            },
        ));
      } else {
        // Non-word token (spaces, punctuation)
        final isInRange = _isDragging && _isSpaceBetweenSelected(token);
        spans.add(TextSpan(
          text: token.text,
          style: isInRange
              ? normalStyle.copyWith(
                  backgroundColor:
                      const Color(0xFFE040FB).withValues(alpha: 0.35),
                )
              : normalStyle,
        ));
      }
    }

    return TextSpan(children: spans);
  }

  /// Returns true if this non-word token sits between two selected words.
  bool _isSpaceBetweenSelected(_Token token) {
    if (!_isDragging) return false;
    final selected = _selectedWordIndices;
    if (selected.isEmpty) return false;

    // Find the word indices of the tokens immediately before and after this one
    final tokenIndex = _tokens.indexOf(token);
    int? prevWordIdx;
    int? nextWordIdx;
    for (int i = tokenIndex - 1; i >= 0; i--) {
      if (_tokens[i].isWord) {
        prevWordIdx = _tokens[i].wordIndex;
        break;
      }
    }
    for (int i = tokenIndex + 1; i < _tokens.length; i++) {
      if (_tokens[i].isWord) {
        nextWordIdx = _tokens[i].wordIndex;
        break;
      }
    }

    if (prevWordIdx != null &&
        nextWordIdx != null &&
        selected.contains(prevWordIdx) &&
        selected.contains(nextWordIdx)) {
      return true;
    }
    return false;
  }
}
