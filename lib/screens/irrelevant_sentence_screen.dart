import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';
import '../data/irrelevant_sentence_data.dart';
import '../data/irrelevant_sentence_extra_data.dart';
import '../widgets/glass_card.dart';
import '../services/study_stats_service.dart';
import '../utils/translation_overlay.dart';

class IrrelevantSentenceScreen extends StatefulWidget {
  const IrrelevantSentenceScreen({super.key});

  @override
  State<IrrelevantSentenceScreen> createState() => _IrrelevantSentenceScreenState();
}

class _IrrelevantSentenceScreenState extends State<IrrelevantSentenceScreen> {
  int _currentIndex = 0;
  Map<int, int> _userAnswers = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'irrelevant_state';

    _currentIndex = prefs.getInt('${keyPrefix}_currentIndex') ?? 0;

    final String? answersJson = prefs.getString('${keyPrefix}_answers');
    if (answersJson != null) {
      Map<String, dynamic> decoded = json.decode(answersJson);
      _userAnswers = decoded.map((key, value) => MapEntry(int.parse(key), value as int));
    }

    final allIrrelevantQuestions = [...irrelevantSentenceQuestions, ...extraIrrelevantSentenceQuestions];

    if (_currentIndex >= allIrrelevantQuestions.length) {
      _currentIndex = 0;
      _userAnswers.clear();
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'irrelevant_state';
    await prefs.setInt('${keyPrefix}_currentIndex', _currentIndex);
    
    Map<String, int> stringKeyMap = _userAnswers.map((key, value) => MapEntry(key.toString(), value));
    await prefs.setString('${keyPrefix}_answers', json.encode(stringKeyMap));
  }

  Future<void> _resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'irrelevant_state';
    await prefs.remove('${keyPrefix}_currentIndex');
    await prefs.remove('${keyPrefix}_answers');
    
    setState(() {
      _currentIndex = 0;
      _userAnswers.clear();
    });
    _saveProgress();
  }

  void _selectAnswer(int optionIndex) {
    if (_userAnswers.containsKey(_currentIndex)) return;

    setState(() {
      _userAnswers[_currentIndex] = optionIndex;
    });

    final allIrrelevantQuestions = [...irrelevantSentenceQuestions, ...extraIrrelevantSentenceQuestions];
    final isCorrect = optionIndex == allIrrelevantQuestions[_currentIndex].correctIndex;
    
    StudyStatsService.recordQuestion(
      category: 'Anlam Bütünlüğünü Bozan Cümle',
      isCorrect: isCorrect,
    );
    
    _saveProgress();
  }

  void _prevQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _saveProgress();
    }
  }

  void _nextQuestion() {
    final allIrrelevantQuestions = [...irrelevantSentenceQuestions, ...extraIrrelevantSentenceQuestions];
    if (_currentIndex < allIrrelevantQuestions.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _saveProgress();
    } else {
      _resetProgress();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tüm soruları bitirdin! 🎉', style: GoogleFonts.inter()),
          backgroundColor: AppTheme.accentEmerald,
        ),
      );
      Navigator.pop(context);
    }
  }

  List<InlineSpan> _buildParagraphSpans(List<String> sentences, bool isAnswered, int correctIndex) {
    List<InlineSpan> spans = [];
    const romanNumerals = ['I', 'II', 'III', 'IV', 'V'];
    final RegExp wordRegExp = RegExp(r"([a-zA-Z0-9_'-]+)|([^a-zA-Z0-9_'-]+)");

    for (int i = 0; i < sentences.length; i++) {
      bool isIrrelevant = isAnswered && i == correctIndex;
      
      spans.add(
        TextSpan(
          text: '(${romanNumerals[i]}) ',
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w800,
            color: isIrrelevant ? AppTheme.accentRose : AppTheme.primaryCyan,
            fontSize: 16,
          ),
        ),
      );
      
      final matches = wordRegExp.allMatches('${sentences[i]} ');
      final normalStyle = GoogleFonts.inter(
        color: isIrrelevant ? AppTheme.textSecondary.withOpacity(0.5) : AppTheme.textPrimary,
        fontSize: 16,
        height: 1.6,
        decoration: isIrrelevant ? TextDecoration.lineThrough : null,
        decorationColor: AppTheme.accentRose,
      );

      for (final match in matches) {
        final String token = match.group(0)!;
        final bool isWord = match.group(1) != null;

        if (isWord) {
          spans.add(
            TextSpan(
              text: token,
              style: normalStyle,
              recognizer: TapGestureRecognizer()
                ..onTapUp = (details) {
                  TranslationOverlay.show(
                    context: context,
                    globalPosition: details.globalPosition,
                    text: token,
                    isSingleWord: true,
                  );
                },
            ),
          );
        } else {
          spans.add(TextSpan(text: token, style: normalStyle));
        }
      }
    }
    
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppTheme.darkBg, 
        body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan))
      );
    }

    final allIrrelevantQuestions = [...irrelevantSentenceQuestions, ...extraIrrelevantSentenceQuestions];
    final q = allIrrelevantQuestions[_currentIndex];
    final bool isAnswered = _userAnswers.containsKey(_currentIndex);
    final int? selectedOption = _userAnswers[_currentIndex];
    const romanNumerals = ['I', 'II', 'III', 'IV', 'V'];
    const optionLetters = ['A', 'B', 'C', 'D', 'E'];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_rounded, color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Anlamı Bozan Cümle',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Soru ${_currentIndex + 1}/${allIrrelevantQuestions.length}',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_currentIndex > 0)
                      IconButton(
                        icon: const Icon(Icons.refresh_rounded, color: AppTheme.accentRose, size: 22),
                        tooltip: 'Sıfırla',
                        onPressed: _resetProgress,
                      ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),

              // Content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Question Instructions
                      Text(
                        'Aşağıdaki parçada numaralanmış cümlelerden hangisi düşüncenin akışını bozmaktadır?',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.textMuted,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Paragraph
                      GlassCard(
                        padding: const EdgeInsets.all(24),
                        child: RichText(
                          text: TextSpan(
                            children: _buildParagraphSpans(q.sentences, isAnswered, q.correctIndex),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Options
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        alignment: WrapAlignment.center,
                        children: List.generate(5, (index) {
                          final isSelected = selectedOption == index;
                          final isCorrect = index == q.correctIndex;
                          
                          Color borderColor = AppTheme.primaryCyan.withOpacity(0.3);
                          Color bgColor = AppTheme.darkSurface;
                          Color textColor = AppTheme.textSecondary;

                          if (isAnswered) {
                            if (isCorrect) {
                              bgColor = AppTheme.accentEmerald.withOpacity(0.2);
                              borderColor = AppTheme.accentEmerald;
                              textColor = Colors.white;
                            } else if (isSelected) {
                              bgColor = AppTheme.accentRose.withOpacity(0.2);
                              borderColor = AppTheme.accentRose;
                              textColor = Colors.white;
                            } else {
                              borderColor = Colors.white.withOpacity(0.1);
                            }
                          } else if (isSelected) {
                            borderColor = AppTheme.primaryCyan;
                            bgColor = AppTheme.primaryCyan.withOpacity(0.1);
                          }

                          return InkWell(
                            onTap: () => _selectAnswer(index),
                            borderRadius: BorderRadius.circular(16),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: (MediaQuery.of(context).size.width - 60) / 2, // 2 columns
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: borderColor, width: 1.5),
                                boxShadow: isSelected || (isAnswered && isCorrect)
                                    ? [BoxShadow(color: borderColor.withOpacity(0.3), blurRadius: 8, spreadRadius: 0)]
                                    : [],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${optionLetters[index]}) ',
                                    style: GoogleFonts.outfit(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: isAnswered && isCorrect ? AppTheme.accentEmerald : AppTheme.primaryCyan,
                                    ),
                                  ),
                                  Text(
                                    romanNumerals[index],
                                    style: GoogleFonts.outfit(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),

                      // Explanation
                      if (isAnswered) ...[
                        const SizedBox(height: 32),
                        GlassCard(
                          padding: const EdgeInsets.all(20),
                          borderColor: AppTheme.primaryCyan.withOpacity(0.3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.lightbulb_outline, color: AppTheme.primaryCyan, size: 20),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Çözüm ve Açıklama',
                                    style: GoogleFonts.outfit(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryCyan,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Text(
                                q.explanation,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: AppTheme.textSecondary,
                                  height: 1.6,
                                ),
                              ),
                              const Divider(height: 32, color: Colors.white10),
                              Text(
                                'Çeviri:',
                                style: GoogleFonts.outfit(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                q.translation,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: AppTheme.textMuted,
                                  height: 1.6,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 40),
                      
                      // Nav Buttons
                      if (isAnswered || _currentIndex > 0)
                        Row(
                          children: [
                            if (_currentIndex > 0) ...[
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _prevQuestion,
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppTheme.primaryCyan,
                                    side: BorderSide(color: AppTheme.primaryCyan.withOpacity(0.5)),
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  ),
                                  child: Text(
                                    '← Önceki',
                                    style: GoogleFonts.outfit(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                            ],
                            if (isAnswered)
                              Expanded(
                                flex: 2,
                                child: ElevatedButton(
                                  onPressed: _nextQuestion,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.primaryCyan,
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    _currentIndex < irrelevantSentenceQuestions.length - 1 ? 'Sonraki Soru' : 'Atölyeyi Bitir',
                                    style: GoogleFonts.outfit(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
