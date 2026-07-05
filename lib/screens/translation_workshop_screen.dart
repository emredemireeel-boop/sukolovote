import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';
import '../data/translation_data.dart';
import '../data/translation_extra_data.dart';
import '../widgets/glass_card.dart';
import '../widgets/tappable_passage_text.dart';
import '../services/study_stats_service.dart';
import '../services/mistake_service.dart';

class TranslationWorkshopScreen extends StatefulWidget {
  const TranslationWorkshopScreen({super.key});

  @override
  State<TranslationWorkshopScreen> createState() => _TranslationWorkshopScreenState();
}

class _TranslationWorkshopScreenState extends State<TranslationWorkshopScreen> {
  int _currentIndex = 0;
  Map<int, int> _userAnswers = {};
  
  late List<TranslationQuestion> _questions;
  bool _showEnToTr = true; // true = EN->TR, false = TR->EN, null = All (mix)
  String _currentFilter = 'Tümü';
  bool _isLoading = true;
  int _seed = 0;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    setState(() {
      _isLoading = true;
    });

    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'trans_state_$_currentFilter';
    
    _seed = prefs.getInt('${keyPrefix}_seed') ?? DateTime.now().millisecondsSinceEpoch;
    _currentIndex = prefs.getInt('${keyPrefix}_currentIndex') ?? 0;

    final allQuestions = [...translationQuestions, ...finalExtraTranslationQuestions];
    if (_currentFilter == 'Tümü') {
      _questions = List.from(allQuestions);
    } else if (_currentFilter == 'İngilizce -> Türkçe') {
      _questions = allQuestions.where((q) => q.isEnToTr).toList();
    } else {
      _questions = allQuestions.where((q) => !q.isEnToTr).toList();
    }

    if (_currentIndex >= _questions.length) {
      _currentIndex = 0;
      _seed = DateTime.now().millisecondsSinceEpoch;
      _userAnswers.clear();
    }

    final String? answersJson = prefs.getString('${keyPrefix}_answers');
    if (answersJson != null) {
      Map<String, dynamic> decoded = json.decode(answersJson);
      _userAnswers = decoded.map((key, value) => MapEntry(int.parse(key), value as int));
    }

    _questions.shuffle(math.Random(_seed));
    
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'trans_state_$_currentFilter';
    await prefs.setInt('${keyPrefix}_seed', _seed);
    await prefs.setInt('${keyPrefix}_currentIndex', _currentIndex);
    Map<String, int> stringKeyMap = _userAnswers.map((key, value) => MapEntry(key.toString(), value));
    await prefs.setString('${keyPrefix}_answers', json.encode(stringKeyMap));
  }

  Future<void> _resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'trans_state_$_currentFilter';
    await prefs.remove('${keyPrefix}_seed');
    await prefs.remove('${keyPrefix}_answers');
    setState(() {
      _currentIndex = 0;
      _userAnswers.clear();
      _seed = DateTime.now().millisecondsSinceEpoch;
    });
    _loadProgress();
  }

  void _selectAnswer(int index) {
    if (_userAnswers.containsKey(_currentIndex)) return;
    
    setState(() {
      _userAnswers[_currentIndex] = index;
    });

    final q = _questions[_currentIndex];
    final isCorrect = index == q.correctIndex;

    StudyStatsService.recordQuestion(
      category: 'Çeviri Soruları',
      isCorrect: isCorrect,
    );

    if (!isCorrect) {
      MistakeService.recordMistake(
        question: q.sourceText,
        options: q.options,
        correctIndex: q.correctIndex,
        selectedIndex: index,
        explanation: q.explanation,
        category: 'Çeviri Soruları',
      );
    }
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
    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _saveProgress();
    } else {
      // Quiz bitti
      _resetProgress();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Atölyedeki tüm soruları bitirdin! 🎉', style: GoogleFonts.inter()),
          backgroundColor: AppTheme.accentEmerald,
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return const Scaffold(backgroundColor: AppTheme.darkBg, body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)));
    if (_questions.isEmpty) return const Scaffold(backgroundColor: AppTheme.darkBg, body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)));

    final q = _questions[_currentIndex];

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
                            'Çeviri Atölyesi',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Soru ${_currentIndex + 1}/${_questions.length}',
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
                        tooltip: 'İlerlemeyi Sıfırla',
                        onPressed: _resetProgress,
                      ),
                    // Filter Menu
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.filter_list_rounded, color: AppTheme.primaryCyan),
                      color: AppTheme.darkCard,
                      onSelected: (value) {
                        if (value != _currentFilter) {
                          _currentFilter = value;
                          _loadProgress();
                        }
                      },
                      itemBuilder: (context) => [
                        _buildPopupItem('Tümü'),
                        _buildPopupItem('İngilizce -> Türkçe'),
                        _buildPopupItem('Türkçe -> İngilizce'),
                      ],
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
                    value: (_currentIndex + 1) / _questions.length,
                    backgroundColor: Colors.white.withOpacity(0.05),
                    valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryCyan),
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
                      // Question Type Badge
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: q.isEnToTr ? AppTheme.primaryIndigo.withOpacity(0.2) : AppTheme.accentRose.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: q.isEnToTr ? AppTheme.primaryIndigo.withOpacity(0.3) : AppTheme.accentRose.withOpacity(0.3),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(q.isEnToTr ? Icons.language : Icons.g_translate, 
                                     size: 14, 
                                     color: q.isEnToTr ? AppTheme.primaryIndigo : AppTheme.accentRose),
                                const SizedBox(width: 6),
                                Text(
                                  q.isEnToTr ? 'İngilizce → Türkçe' : 'Türkçe → İngilizce',
                                  style: GoogleFonts.inter(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: q.isEnToTr ? const Color(0xFF818CF8) : const Color(0xFFFB7185),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              q.difficulty,
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: q.difficulty == 'Kolay' ? AppTheme.accentEmerald 
                                     : q.difficulty == 'Orta' ? AppTheme.accentAmber 
                                     : AppTheme.accentRose,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Source Text
                      q.isEnToTr
                          ? TappablePassageText(
                              passage: q.sourceText,
                              vocabMap: const {},
                              textStyle: GoogleFonts.outfit(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.textPrimary,
                                height: 1.4,
                              ),
                            )
                          : Text(
                              q.sourceText,
                              style: GoogleFonts.outfit(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.textPrimary,
                                height: 1.4,
                              ),
                            ),
                      const SizedBox(height: 24),

                      // Key Phrases (Eğer cevaplanmışsa göster)
                      if (_userAnswers.containsKey(_currentIndex) && q.keyPhrases.isNotEmpty) ...[
                        Text(
                          '🔑 Anahtar İfadeler',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.accentAmber,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: q.keyPhrases.map((phrase) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppTheme.accentAmber.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppTheme.accentAmber.withOpacity(0.2)),
                            ),
                            child: Text(
                              phrase,
                              style: GoogleFonts.inter(
                                fontSize: 11,
                                color: AppTheme.accentAmber,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )).toList(),
                        ),
                        const SizedBox(height: 24),
                      ],

                      // Options
                      ...List.generate(q.options.length, (index) {
                        final bool isAnswered = _userAnswers.containsKey(_currentIndex);
                        final isSelected = _userAnswers[_currentIndex] == index;
                        final isCorrect = index == q.correctIndex;

                        Color borderColor = AppTheme.primaryCyan.withOpacity(0.3);
                        Color bgColor = Colors.white.withOpacity(0.03);
                        Color iconColor = AppTheme.textMuted;
                        IconData? icon;

                        if (isAnswered) {
                          if (isCorrect) {
                            bgColor = AppTheme.accentEmerald.withOpacity(0.15);
                            borderColor = AppTheme.accentEmerald.withOpacity(0.5);
                            iconColor = AppTheme.accentEmerald;
                            icon = Icons.check_circle_rounded;
                          } else if (isSelected) {
                            bgColor = AppTheme.accentRose.withOpacity(0.15);
                            borderColor = AppTheme.accentRose.withOpacity(0.5);
                            iconColor = AppTheme.accentRose;
                            icon = Icons.cancel_rounded;
                          }
                        } else if (isSelected) {
                          bgColor = AppTheme.primaryCyan.withOpacity(0.15);
                          borderColor = AppTheme.primaryCyan.withOpacity(0.5);
                          iconColor = AppTheme.primaryCyan;
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: GestureDetector(
                            onTap: () => _selectAnswer(index),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: borderColor),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 2),
                                    child: icon != null 
                                        ? Icon(icon, color: iconColor, size: 20)
                                        : Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: iconColor, width: 2),
                                            ),
                                          ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      q.options[index],
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: isSelected || (isAnswered && isCorrect) 
                                            ? Colors.white 
                                            : AppTheme.textSecondary,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),

                      // Explanation
                      if (_userAnswers.containsKey(_currentIndex)) ...[
                        const SizedBox(height: 16),
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
                                    'Neden böyle çevrildi?',
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
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
                                  _currentIndex < _questions.length - 1 ? 'Sonraki Çeviri' : 'Atölyeyi Bitir',
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

  PopupMenuItem<String> _buildPopupItem(String value) {
    final isSelected = value == _currentFilter;
    return PopupMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: GoogleFonts.inter(
          color: isSelected ? AppTheme.primaryCyan : Colors.white,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
