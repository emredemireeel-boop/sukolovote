import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';
import '../data/questions_data.dart';
import '../services/study_stats_service.dart';
import '../services/mistake_service.dart';
import '../services/daily_quest_service.dart';
import '../widgets/glass_card.dart';
import '../widgets/tappable_passage_text.dart';

class QuizScreen extends StatefulWidget {
  final String? questionTypeId;
  const QuizScreen({super.key, this.questionTypeId});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  bool _quizStarted = false;
  int _currentQuestion = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  Map<int, int> _userAnswers = {};
  bool _isLoading = true;
  int _seed = 0;
  
  Timer? _timer;
  int _elapsedSeconds = 0;
  late List<ExampleQuestion> _quizQuestions;
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _quizQuestions = [];
    if (widget.questionTypeId != null) {
      for (var qt in questionTypes) {
        if (qt.id == widget.questionTypeId) {
          _quizQuestions.addAll(qt.examples);
        }
      }
    } else {
      for (var qt in questionTypes) {
        _quizQuestions.addAll(qt.examples);
      }
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

    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'quiz_state_${widget.questionTypeId ?? "karma"}';
    
    _seed = prefs.getInt('${keyPrefix}_seed') ?? DateTime.now().millisecondsSinceEpoch;
    _currentQuestion = prefs.getInt('${keyPrefix}_currentIndex') ?? 0;
    _correctAnswers = prefs.getInt('${keyPrefix}_correct') ?? 0;
    _wrongAnswers = prefs.getInt('${keyPrefix}_wrong') ?? 0;
    
    // Eğer önceki testi bitirdiyse sıfırla
    if (_currentQuestion >= _quizQuestions.length) {
      _currentQuestion = 0;
      _correctAnswers = 0;
      _wrongAnswers = 0;
      _userAnswers.clear();
      _seed = DateTime.now().millisecondsSinceEpoch;
    }

    final String? answersJson = prefs.getString('${keyPrefix}_answers');
    if (answersJson != null) {
      Map<String, dynamic> decoded = json.decode(answersJson);
      _userAnswers = decoded.map((key, value) => MapEntry(int.parse(key), value as int));
    }

    _quizQuestions.shuffle(math.Random(_seed));
    
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'quiz_state_${widget.questionTypeId ?? "karma"}';
    await prefs.setInt('${keyPrefix}_seed', _seed);
    await prefs.setInt('${keyPrefix}_currentIndex', _currentQuestion);
    await prefs.setInt('${keyPrefix}_correct', _correctAnswers);
    await prefs.setInt('${keyPrefix}_wrong', _wrongAnswers);
    Map<String, int> stringKeyMap = _userAnswers.map((key, value) => MapEntry(key.toString(), value));
    await prefs.setString('${keyPrefix}_answers', json.encode(stringKeyMap));
  }

  Future<void> _clearProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String keyPrefix = 'quiz_state_${widget.questionTypeId ?? "karma"}';
    await prefs.remove('${keyPrefix}_seed');
    await prefs.remove('${keyPrefix}_currentIndex');
    await prefs.remove('${keyPrefix}_correct');
    await prefs.remove('${keyPrefix}_wrong');
    await prefs.remove('${keyPrefix}_answers');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _slideController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _elapsedSeconds = 0;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _elapsedSeconds++;
        });
      }
    });
  }

  String get _formattedTime {
    final m = (_elapsedSeconds ~/ 60).toString().padLeft(2, '0');
    final s = (_elapsedSeconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  void _startQuiz({bool resume = false}) {
    setState(() {
      _quizStarted = true;
      if (!resume) {
        _currentQuestion = 0;
        _correctAnswers = 0;
        _wrongAnswers = 0;
        _seed = DateTime.now().millisecondsSinceEpoch;
        _quizQuestions.shuffle(math.Random(_seed));
        _clearProgress();
      }
      _userAnswers.clear();
    });
    _startTimer();
    _slideController.forward(from: 0);
  }

  void _selectAnswer(int index) {
    if (_userAnswers.containsKey(_currentQuestion)) return;
    
    final q = _quizQuestions[_currentQuestion];
    final isCorrect = index == q.correctIndex;
    
    // Kayıtları tut
    StudyStatsService.recordQuestion(
      category: widget.questionTypeId != null 
          ? questionTypes.firstWhere((t) => t.id == widget.questionTypeId).title 
          : 'Karışık Quiz',
      isCorrect: isCorrect,
    );

    if (!isCorrect) {
      MistakeService.recordMistake(
        question: q.question,
        options: q.options,
        correctIndex: q.correctIndex,
        selectedIndex: index,
        explanation: q.explanation,
        passage: q.passage,
        category: widget.questionTypeId != null 
            ? questionTypes.firstWhere((t) => t.id == widget.questionTypeId).title 
            : 'Karışık Quiz',
      );
    }
    
    DailyQuestService.progressQuest('q_questions_10', 1);

    setState(() {
      _userAnswers[_currentQuestion] = index;
      if (isCorrect) {
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
      _saveProgress();
    });
  }

  void _prevQuestion() {
    if (_currentQuestion > 0) {
      setState(() {
        _currentQuestion--;
      });
      _saveProgress();
      _slideController.forward(from: 0);
    }
  }

  void _nextQuestion() {
    if (_currentQuestion < _quizQuestions.length - 1) {
      setState(() {
        _currentQuestion++;
      });
      _slideController.forward(from: 0);
      _saveProgress();
    } else {
      _timer?.cancel();
      _clearProgress();
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
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppTheme.darkBg,
        body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)),
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: !_quizStarted ? _buildStartScreen() : _buildQuizContent(),
      ),
    );
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
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.timer_outlined, size: 14, color: AppTheme.primaryCyan),
                                const SizedBox(width: 4),
                                Text(
                                  _formattedTime,
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryCyan,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_currentQuestion > 0) ...[
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: OutlinedButton(
                        onPressed: () => _startQuiz(resume: true),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppTheme.primaryCyan,
                          side: const BorderSide(color: AppTheme.primaryCyan, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          'Kaldığım Yerden Devam Et (${_currentQuestion + 1}/${_quizQuestions.length})',
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      final bool isAnswered = _userAnswers.containsKey(_currentQuestion);
                      final isSelected = _userAnswers[_currentQuestion] == entry.key;
                      final isCorrect = entry.key == question.correctIndex;
                      Color bgColor = Colors.white.withOpacity(0.04);
                      Color borderColor = Colors.white.withOpacity(0.08);
                      Color textColor = AppTheme.textSecondary;

                      if (isAnswered) {
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
                              if (isAnswered && isCorrect)
                                const Icon(Icons.check_circle_rounded,
                                    color: AppTheme.accentEmerald, size: 20),
                              if (isAnswered && isSelected && !isCorrect)
                                const Icon(Icons.cancel_rounded,
                                    color: AppTheme.accentRose, size: 20),
                            ],
                          ),
                        ),
                      );
                    }),

                    // Explanation
                    if (_userAnswers.containsKey(_currentQuestion)) ...[
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
                      Row(
                        children: [
                          if (_currentQuestion > 0) ...[
                            Expanded(
                              child: SizedBox(
                                height: 52,
                                child: OutlinedButton(
                                  onPressed: _prevQuestion,
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppTheme.primaryCyan,
                                    side: BorderSide(color: AppTheme.primaryCyan.withOpacity(0.5)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Text(
                                    '← Önceki',
                                    style: GoogleFonts.outfit(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                          ],
                          Expanded(
                            flex: 2,
                            child: SizedBox(
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
                          ),
                        ],
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
