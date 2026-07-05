import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';
import '../data/cloze_test_data.dart';
import '../widgets/glass_card.dart';
import '../services/study_stats_service.dart';
import '../services/cloze_test_service.dart';
import '../utils/translation_overlay.dart';

class ClozeTestScreen extends StatefulWidget {
  const ClozeTestScreen({super.key});

  @override
  State<ClozeTestScreen> createState() => _ClozeTestScreenState();
}

class _ClozeTestScreenState extends State<ClozeTestScreen> {
  int _currentPassageIndex = 0;
  Map<int, Map<int, int>> _allPassageAnswers = {};
  Map<int, bool> _passageSubmitted = {};

  Map<int, int> get _selectedAnswers => _allPassageAnswers[_currentPassageIndex] ??= {};
  bool get _isSubmitted => _passageSubmitted[_currentPassageIndex] ?? false;
  bool _isLoading = true;
  List<ClozeTestPassage> _availablePassages = [];

  @override
  void initState() {
    super.initState();
    _loadAvailablePassages();
  }

  Future<void> _loadAvailablePassages() async {
    final prefs = await SharedPreferences.getInstance();
    final completedTitles = await ClozeTestService.getCompletedPassages();
    
    String? savedTitle = prefs.getString('cloze_saved_title');
    String? savedAnswersJson = prefs.getString('cloze_saved_answers');
    bool savedIsSubmitted = prefs.getBool('cloze_is_submitted') ?? false;

    List<ClozeTestPassage> remaining = clozeTestData.where((p) => !completedTitles.contains(p.title)).toList();

    if (savedTitle != null) {
      int idx = remaining.indexWhere((p) => p.title == savedTitle);
      if (idx != -1) {
        remaining.removeAt(idx);
        remaining.shuffle();
        remaining.insert(0, clozeTestData.firstWhere((p) => p.title == savedTitle));

        if (savedAnswersJson != null) {
          Map<String, dynamic> decoded = json.decode(savedAnswersJson);
          _allPassageAnswers[0] = decoded.map((key, value) => MapEntry(int.parse(key), value as int));
        }
        _passageSubmitted[0] = savedIsSubmitted;
      } else {
        remaining.shuffle();
      }
    } else {
      remaining.shuffle();
    }

    setState(() {
      _availablePassages = remaining;
      _currentPassageIndex = 0;
      _isLoading = false;
    });
  }

  Future<void> _saveProgress() async {
    if (_availablePassages.isEmpty) return;
    
    final prefs = await SharedPreferences.getInstance();
    final passage = _availablePassages[_currentPassageIndex];
    await prefs.setString('cloze_saved_title', passage.title);
    
    Map<String, int> stringKeyMap = _selectedAnswers.map((key, value) => MapEntry(key.toString(), value));
    await prefs.setString('cloze_saved_answers', json.encode(stringKeyMap));
    await prefs.setBool('cloze_is_submitted', _isSubmitted);
  }

  Future<void> _clearProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('cloze_saved_title');
    await prefs.remove('cloze_saved_answers');
    await prefs.remove('cloze_is_submitted');
  }

  void _prevPassage() {
    if (_currentPassageIndex > 0) {
      setState(() {
        _currentPassageIndex--;
      });
      _saveProgress();
    }
  }

  void _nextPassage() {
    if (_currentPassageIndex < _availablePassages.length - 1) {
      setState(() {
        _currentPassageIndex++;
      });
      _clearProgress();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tüm cloze testleri bitirdin! 🎉', style: GoogleFonts.inter()),
          backgroundColor: AppTheme.accentEmerald,
        ),
      );
      Navigator.pop(context);
    }
  }

  void _submitTest() {
    final passage = _availablePassages[_currentPassageIndex];
    if (_selectedAnswers.length < passage.questions.length) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lütfen tüm boşlukları doldur.', style: GoogleFonts.inter()),
          backgroundColor: AppTheme.accentAmber,
        ),
      );
      return;
    }

    int correctCount = 0;
    for (int i = 0; i < passage.questions.length; i++) {
      if (_selectedAnswers[i] == passage.questions[i].correctIndex) {
        correctCount++;
      }
    }

    // İstatistiklere kaydet
    for (int i = 0; i < passage.questions.length; i++) {
      StudyStatsService.recordQuestion(
        category: 'Cloze Test',
        isCorrect: _selectedAnswers[i] == passage.questions[i].correctIndex,
      );
    }

    ClozeTestService.markAsCompleted(passage.title);

    setState(() {
      _passageSubmitted[_currentPassageIndex] = true;
    });
    _saveProgress();

    _showResultDialog(correctCount, passage.questions.length);
  }

  void _showResultDialog(int correctCount, int totalCount) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          correctCount >= 4 ? 'Harika! 🎉' : correctCount >= 3 ? 'İyi İş! 💪' : 'Daha Çok Çalışmalısın 📚',
          style: GoogleFonts.outfit(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        content: Text(
          '$totalCount soruda $correctCount doğru yaptın.\nAşağıdan açıklamaları inceleyebilirsin.',
          style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('İncele', style: GoogleFonts.inter(color: AppTheme.primaryCyan, fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }

  void _openOptionSelector(int questionIndex) {
    if (_isSubmitted) return;

    final passage = _availablePassages[_currentPassageIndex];
    final question = passage.questions[questionIndex];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkSurface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boşluk ${questionIndex + 1}',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            ...List.generate(question.choices.length, (choiceIndex) {
              final isSelected = _selectedAnswers[questionIndex] == choiceIndex;
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedAnswers[questionIndex] = choiceIndex;
                    });
                    _saveProgress();
                    Navigator.pop(ctx);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                      color: isSelected ? AppTheme.primaryCyan.withOpacity(0.2) : Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? AppTheme.primaryCyan.withOpacity(0.5) : Colors.transparent,
                      ),
                    ),
                    child: Text(
                      question.choices[choiceIndex],
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: isSelected ? AppTheme.primaryCyan : Colors.white,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)),
      );
    }

    if (_availablePassages.isEmpty) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('🎉', style: TextStyle(fontSize: 64)),
                const SizedBox(height: 16),
                Text(
                  'Tüm Testleri Çözdün!',
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Yeni testler çok yakında eklenecek.',
                  style: GoogleFonts.inter(color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    ClozeTestService.resetProgress();
                    _loadAvailablePassages();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryCyan,
                  ),
                  child: const Text('Testleri Sıfırla'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Geri Dön', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ),
      );
    }

    final passage = _availablePassages[_currentPassageIndex];

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cloze Test',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Test ${_currentPassageIndex + 1} / ${_availablePassages.length}',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryIndigo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Progress
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: _availablePassages.isEmpty ? 0 : (_currentPassageIndex + 1) / _availablePassages.length,
                    backgroundColor: Colors.white.withOpacity(0.05),
                    valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryIndigo),
                    minHeight: 4,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Passage Title
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryIndigo.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppTheme.primaryIndigo.withOpacity(0.3)),
                        ),
                        child: Text(
                          passage.title,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF818CF8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Passage Text
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.inter(
                            fontSize: 17,
                            height: 1.8,
                            color: AppTheme.textPrimary,
                          ),
                          children: _buildPassageSpans(passage),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Submit Button or Explanations
                      if (!_isSubmitted)
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _submitTest,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryIndigo,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            ),
                            child: Text(
                              'Testi Bitir',
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      else ...[
                        Text(
                          'Açıklamalar',
                          style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...List.generate(passage.questions.length, (index) {
                          final q = passage.questions[index];
                          final isCorrect = _selectedAnswers[index] == q.correctIndex;
                          final selectedText = _selectedAnswers[index] != null 
                              ? q.choices[_selectedAnswers[index]!] 
                              : 'Boş';
                          
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: GlassCard(
                              padding: const EdgeInsets.all(16),
                              borderColor: isCorrect ? AppTheme.accentEmerald.withOpacity(0.3) : AppTheme.accentRose.withOpacity(0.3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: isCorrect ? AppTheme.accentEmerald.withOpacity(0.2) : AppTheme.accentRose.withOpacity(0.2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '${index + 1}',
                                            style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: isCorrect ? AppTheme.accentEmerald : AppTheme.accentRose,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary),
                                            children: [
                                              TextSpan(text: 'Senin cevabın: ', style: TextStyle(color: AppTheme.textMuted)),
                                              TextSpan(
                                                text: selectedText,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: isCorrect ? AppTheme.accentEmerald : AppTheme.accentRose,
                                                  decoration: isCorrect ? TextDecoration.none : TextDecoration.lineThrough,
                                                ),
                                              ),
                                              if (!isCorrect) ...[
                                                TextSpan(text: '  Doğru cevap: ', style: TextStyle(color: AppTheme.textMuted)),
                                                TextSpan(
                                                  text: q.choices[q.correctIndex],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: AppTheme.accentEmerald,
                                                  ),
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.03),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      q.explanation,
                                      style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: AppTheme.textSecondary,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            if (_currentPassageIndex > 0) ...[
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _prevPassage,
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppTheme.primaryIndigo,
                                    side: BorderSide(color: AppTheme.primaryIndigo.withOpacity(0.5)),
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
                            Expanded(
                              flex: 2,
                              child: ElevatedButton(
                                onPressed: _nextPassage,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.primaryIndigo,
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                ),
                                child: Text(
                                  _currentPassageIndex < _availablePassages.length - 1 ? 'Sonraki Parçaya Geç' : 'Atölyeyi Bitir',
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
                      ],
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

  List<InlineSpan> _buildPassageSpans(ClozeTestPassage passage) {
    List<InlineSpan> spans = [];
    final RegExp wordRegExp = RegExp(r"([a-zA-Z0-9_'-]+)|([^a-zA-Z0-9_'-]+)");
    
    for (int i = 0; i < passage.textSegments.length; i++) {
      // Metin kısmı ekle (kelime kelime ayrıştırıp tıklanabilir yap)
      final segmentText = passage.textSegments[i];
      final matches = wordRegExp.allMatches(segmentText);
      final normalStyle = GoogleFonts.inter(
        fontSize: 17,
        height: 1.8,
        color: AppTheme.textPrimary,
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
      
      // Eğer bu segmentten sonra bir soru (boşluk) varsa onu ekle
      if (i < passage.questions.length) {
        final q = passage.questions[i];
        final selectedValue = _selectedAnswers[i] != null ? q.choices[_selectedAnswers[i]!] : '___ ${i + 1} ___';
        
        Color bgColor = AppTheme.primaryIndigo.withOpacity(0.15);
        Color textColor = const Color(0xFF818CF8);
        Color borderColor = AppTheme.primaryIndigo.withOpacity(0.4);

        if (_isSubmitted) {
          final isCorrect = _selectedAnswers[i] == q.correctIndex;
          bgColor = isCorrect ? AppTheme.accentEmerald.withOpacity(0.15) : AppTheme.accentRose.withOpacity(0.15);
          textColor = isCorrect ? AppTheme.accentEmerald : AppTheme.accentRose;
          borderColor = isCorrect ? AppTheme.accentEmerald.withOpacity(0.4) : AppTheme.accentRose.withOpacity(0.4);
        }

        spans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: () => _openOptionSelector(i),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: borderColor),
                ),
                child: Text(
                  selectedValue,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }
    
    return spans;
  }
}
