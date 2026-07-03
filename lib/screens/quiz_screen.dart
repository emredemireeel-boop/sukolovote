import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/questions_data.dart';
import '../widgets/glass_card.dart';
import '../widgets/tappable_passage_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  bool _quizStarted = false;
  int _currentQuestion = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  int? _selectedAnswer;
  bool _answered = false;
  late List<ExampleQuestion> _quizQuestions;
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _quizQuestions = [];
    for (var qt in questionTypes) {
      _quizQuestions.addAll(qt.examples);
    }
    _quizQuestions.shuffle();

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  void _startQuiz() {
    setState(() {
      _quizStarted = true;
      _currentQuestion = 0;
      _correctAnswers = 0;
      _wrongAnswers = 0;
      _selectedAnswer = null;
      _answered = false;
      _quizQuestions.shuffle();
    });
    _slideController.forward(from: 0);
  }

  void _selectAnswer(int index) {
    if (_answered) return;
    setState(() {
      _selectedAnswer = index;
      _answered = true;
      if (index == _quizQuestions[_currentQuestion].correctIndex) {
        _correctAnswers++;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Tebrikler şüko ❤️', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
            backgroundColor: AppTheme.accentEmerald,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 1),
            margin: const EdgeInsets.only(bottom: 80, left: 20, right: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        );
      } else {
        _wrongAnswers++;
        final messages = [
          'Kız Şüko, bunu nasıl yanlış yaparsın? 🤦‍♀️',
          'Doktoraya giden yolda böyle ufak hatalar olur Şüko, ama dikkat! 😅',
          'Bu şıkkı işaretlerken ne düşündün acaba Şükran? 🤔',
          'Aman diyeyim, gerçek sınavda böyle yapma! 🚨',
          'Tıp çalışmıyor dedik de, bu kadar da değil Şüko! 😂'
        ];
        final msg = messages[DateTime.now().millisecond % messages.length];
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(msg, style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
            backgroundColor: AppTheme.accentRose,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
            margin: const EdgeInsets.only(bottom: 80, left: 20, right: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        );
      }
    });
  }

  void _nextQuestion() {
    if (_currentQuestion < _quizQuestions.length - 1) {
      setState(() {
        _currentQuestion++;
        _selectedAnswer = null;
        _answered = false;
      });
      _slideController.forward(from: 0);
    } else {
      _showResults();
    }
  }

  void _showResults() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          color: AppTheme.darkSurface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 28),
              Text(
                _correctAnswers > _quizQuestions.length / 2 ? '🎉' : '📚',
                style: const TextStyle(fontSize: 56),
              ),
              const SizedBox(height: 16),
              Text(
                _correctAnswers > _quizQuestions.length / 2
                    ? 'Tebrikler şüko ❤️'
                    : 'Çalışmaya Devam!',
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildResultStat(
                    '$_correctAnswers',
                    'Doğru',
                    AppTheme.accentEmerald,
                  ),
                  _buildResultStat(
                    '$_wrongAnswers',
                    'Yanlış',
                    AppTheme.accentRose,
                  ),
                  _buildResultStat(
                    '${_quizQuestions.length}',
                    'Toplam',
                    AppTheme.primaryCyan,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Score percentage
              Text(
                'Başarı: %${((_correctAnswers / _quizQuestions.length) * 100).toStringAsFixed(0)}',
                style: GoogleFonts.outfit(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryCyan,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _startQuiz();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryCyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Tekrar Çöz',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultStat(String value, String label, Color color) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: color.withOpacity(0.12),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color.withOpacity(0.3),
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.outfit(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 13,
            color: AppTheme.textMuted,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_quizStarted) {
      return _buildStartScreen();
    }
    return _buildQuizContent();
  }

  Widget _buildStartScreen() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz Modu',
              style: GoogleFonts.outfit(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Bilgini test et, eksiklerini keşfet',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 32),

            // Quiz Info Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primaryIndigo.withOpacity(0.12),
                    AppTheme.primaryCyan.withOpacity(0.06),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: AppTheme.primaryIndigo.withOpacity(0.2),
                ),
              ),
              child: Column(
                children: [
                  const Text('🧠', style: TextStyle(fontSize: 56)),
                  const SizedBox(height: 16),
                  Text(
                    'Karma Quiz',
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tüm soru tiplerinden karışık ${_quizQuestions.length} soru',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppTheme.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  // Features
                  _buildFeatureRow(Icons.shuffle_rounded, 'Rastgele sıralama'),
                  _buildFeatureRow(Icons.lightbulb_outline_rounded, 'Detaylı açıklamalar'),
                  _buildFeatureRow(Icons.analytics_outlined, 'Sonuç analizi'),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _startQuiz,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryIndigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.play_arrow_rounded,
                              color: Colors.white, size: 24),
                          const SizedBox(width: 8),
                          Text(
                            'Quiz\'e Başla',
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppTheme.primaryCyan),
          const SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuizContent() {
    final question = _quizQuestions[_currentQuestion];
    return SafeArea(
      child: Column(
        children: [
          // Progress bar
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() => _quizStarted = false);
                  },
                  icon: const Icon(Icons.close_rounded,
                      color: AppTheme.textMuted, size: 24),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      value: (_currentQuestion + 1) / _quizQuestions.length,
                      backgroundColor: Colors.white.withOpacity(0.08),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppTheme.primaryCyan),
                      minHeight: 6,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${_currentQuestion + 1}/${_quizQuestions.length}',
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Score row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildScoreBadge('$_correctAnswers', AppTheme.accentEmerald, Icons.check),
                const SizedBox(width: 16),
                _buildScoreBadge('$_wrongAnswers', AppTheme.accentRose, Icons.close),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Question
          Expanded(
            child: SlideTransition(
              position: _slideAnimation,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Passage
                    if (question.passage != null) ...[
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.06),
                          ),
                        ),
                        child: TappablePassageText(
                          passage: question.passage!,
                          vocabMap: const {},
                          fontSize: 13,
                          lineHeight: 1.6,
                          textColor: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],

                    TappablePassageText(
                      passage: question.question,
                      vocabMap: const {},
                      fontSize: 16,
                      lineHeight: 1.6,
                      textColor: AppTheme.textPrimary,
                    ),
                    const SizedBox(height: 20),

                    // Options
                    ...question.options.asMap().entries.map((entry) {
                      final isSelected = _selectedAnswer == entry.key;
                      final isCorrect = entry.key == question.correctIndex;
                      Color bgColor = Colors.white.withOpacity(0.04);
                      Color borderColor = Colors.white.withOpacity(0.08);
                      Color textColor = AppTheme.textSecondary;

                      if (_answered) {
                        if (isCorrect) {
                          bgColor = AppTheme.accentEmerald.withOpacity(0.12);
                          borderColor = AppTheme.accentEmerald.withOpacity(0.4);
                          textColor = AppTheme.accentEmerald;
                        } else if (isSelected && !isCorrect) {
                          bgColor = AppTheme.accentRose.withOpacity(0.12);
                          borderColor = AppTheme.accentRose.withOpacity(0.4);
                          textColor = AppTheme.accentRose;
                        }
                      } else if (isSelected) {
                        bgColor = AppTheme.primaryCyan.withOpacity(0.12);
                        borderColor = AppTheme.primaryCyan.withOpacity(0.4);
                        textColor = AppTheme.primaryCyan;
                      }

                      return GestureDetector(
                        onTap: () => _selectAnswer(entry.key),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: borderColor, width: 1.5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TappablePassageText(
                                  passage: entry.value,
                                  vocabMap: const {},
                                  fontSize: 14,
                                  lineHeight: 1.4,
                                  textColor: textColor,
                                ),
                              ),
                              if (_answered && isCorrect)
                                const Icon(Icons.check_circle_rounded,
                                    color: AppTheme.accentEmerald, size: 20),
                              if (_answered && isSelected && !isCorrect)
                                const Icon(Icons.cancel_rounded,
                                    color: AppTheme.accentRose, size: 20),
                            ],
                          ),
                        ),
                      );
                    }),

                    // Explanation
                    if (_answered) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryIndigo.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: AppTheme.primaryIndigo.withOpacity(0.15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lightbulb_rounded,
                                    size: 16, color: AppTheme.primaryIndigo),
                                const SizedBox(width: 6),
                                Text(
                                  'Açıklama',
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryIndigo,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              question.explanation,
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: AppTheme.textSecondary,
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: _nextQuestion,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryCyan,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            _currentQuestion < _quizQuestions.length - 1
                                ? 'Sonraki Soru →'
                                : 'Sonuçları Gör',
                            style: GoogleFonts.outfit(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreBadge(String value, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 6),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
