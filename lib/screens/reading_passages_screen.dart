import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/reading_passages_data.dart';
import '../widgets/tappable_passage_text.dart';

class ReadingPassagesScreen extends StatelessWidget {
  const ReadingPassagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      icon: const Icon(Icons.arrow_back_ios_rounded,
                          color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Okuma Parçaları',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            '${readingPassages.length} parça • YÖKDİL Sağlık Formatı',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),

              // Passage List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  physics: const BouncingScrollPhysics(),
                  itemCount: readingPassages.length,
                  itemBuilder: (context, index) {
                    final passage = readingPassages[index];
                    return _PassageCard(passage: passage);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PassageCard extends StatelessWidget {
  final ReadingPassage passage;
  const _PassageCard({required this.passage});

  Color _difficultyColor() {
    switch (passage.difficulty) {
      case 'Kolay': return const Color(0xFF10B981);
      case 'Orta': return const Color(0xFFF59E0B);
      case 'Zor': return const Color(0xFFF43F5E);
      default: return AppTheme.textMuted;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (_) => _PassageDetailScreen(passage: passage)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
        ),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: _difficultyColor().withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  '${passage.id}',
                  style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: _difficultyColor(),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    passage.title,
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: _difficultyColor().withOpacity(0.15),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          passage.difficulty,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: _difficultyColor(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        passage.topic,
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: AppTheme.textMuted,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${passage.vocabulary.length} kelime • ${passage.questions.length} soru',
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      color: AppTheme.primaryCyan,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: AppTheme.textMuted),
          ],
        ),
      ),
    );
  }
}

// ─── PARÇA DETAY EKRANI ───
class _PassageDetailScreen extends StatefulWidget {
  final ReadingPassage passage;
  const _PassageDetailScreen({required this.passage});

  @override
  State<_PassageDetailScreen> createState() => _PassageDetailScreenState();
}

class _PassageDetailScreenState extends State<_PassageDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      icon: const Icon(Icons.arrow_back_ios_rounded,
                          color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Text(
                        widget.passage.title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),

              // Tab Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: AppTheme.primaryCyan.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelColor: AppTheme.primaryCyan,
                  unselectedLabelColor: AppTheme.textMuted,
                  labelStyle: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600),
                  unselectedLabelStyle: GoogleFonts.inter(fontSize: 13),
                  dividerHeight: 0,
                  tabs: const [
                    Tab(text: '📖 Parça'),
                    Tab(text: '📝 Kelimeler'),
                    Tab(text: '❓ Sorular'),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildPassageTab(),
                    _buildVocabTab(),
                    _buildQuestionsTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPassageTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Topic & Difficulty badge
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.primaryCyan.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  widget.passage.topic,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryCyan,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${widget.passage.difficulty} Seviye',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textMuted,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Passage text
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.06),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white.withOpacity(0.08)),
            ),
            child: TappablePassageText(
              passage: widget.passage.passage,
              vocabMap: {
                for (final v in widget.passage.vocabulary)
                  v.english.toLowerCase(): v.turkish,
              },
              fontSize: 15,
              lineHeight: 1.8,
              textColor: AppTheme.textPrimary.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: 20),

          // Hint to go to vocab
          GestureDetector(
            onTap: () => _tabController.animateTo(1),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primaryCyan.withOpacity(0.12),
                    AppTheme.primaryIndigo.withOpacity(0.06),
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.lightbulb_rounded, color: AppTheme.accentAmber, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Anahtar kelimeleri görmek için "Kelimeler" sekmesine geç!',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildVocabTab() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      physics: const BouncingScrollPhysics(),
      itemCount: widget.passage.vocabulary.length,
      itemBuilder: (context, index) {
        final vocab = widget.passage.vocabulary[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.06),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.white.withOpacity(0.06)),
          ),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppTheme.primaryIndigo.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.primaryIndigo,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            vocab.english,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                        ),
                        if (vocab.partOfSpeech != null)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppTheme.accentAmber.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              vocab.partOfSpeech!,
                              style: GoogleFonts.inter(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.accentAmber,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      vocab.turkish,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: AppTheme.primaryCyan,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildQuestionsTab() {
    return _QuizView(questions: widget.passage.questions, passageTitle: widget.passage.title);
  }
}

// ─── SORULAR (İnteraktif Quiz) ───
class _QuizView extends StatefulWidget {
  final List<PassageQuestion> questions;
  final String passageTitle;
  const _QuizView({required this.questions, required this.passageTitle});

  @override
  State<_QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<_QuizView> {
  int _currentIndex = 0;
  int? _selectedOption;
  bool _answered = false;
  int _correctCount = 0;
  bool _quizFinished = false;

  void _selectOption(int index) {
    if (_answered) return;
    setState(() {
      _selectedOption = index;
      _answered = true;
      if (index == widget.questions[_currentIndex].correctIndex) {
        _correctCount++;
      }
    });
  }

  void _nextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
        _selectedOption = null;
        _answered = false;
      });
    } else {
      setState(() {
        _quizFinished = true;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _currentIndex = 0;
      _selectedOption = null;
      _answered = false;
      _correctCount = 0;
      _quizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_quizFinished) {
      return _buildResult();
    }

    final q = widget.questions[_currentIndex];
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress
          Row(
            children: [
              Text(
                'Soru ${_currentIndex + 1}/${widget.questions.length}',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryCyan,
                ),
              ),
              const Spacer(),
              Text(
                'Doğru: $_correctCount',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: AppTheme.accentEmerald,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: (_currentIndex + 1) / widget.questions.length,
              backgroundColor: Colors.white.withOpacity(0.06),
              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryCyan),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 20),

          // Question
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.06),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.08)),
            ),
            child: Text(
              q.question,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppTheme.textPrimary,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Options
          ...List.generate(q.options.length, (i) {
            final isSelected = _selectedOption == i;
            final isCorrect = i == q.correctIndex;
            Color optColor = Colors.white.withOpacity(0.06);
            Color borderColor = Colors.white.withOpacity(0.08);
            Color textColor = AppTheme.textPrimary;
            String prefix = String.fromCharCode(65 + i); // A, B, C, D

            if (_answered) {
              if (isCorrect) {
                optColor = const Color(0xFF10B981).withOpacity(0.15);
                borderColor = const Color(0xFF10B981).withOpacity(0.4);
                textColor = const Color(0xFF10B981);
              } else if (isSelected && !isCorrect) {
                optColor = const Color(0xFFF43F5E).withOpacity(0.15);
                borderColor = const Color(0xFFF43F5E).withOpacity(0.4);
                textColor = const Color(0xFFF43F5E);
              }
            } else if (isSelected) {
              optColor = AppTheme.primaryCyan.withOpacity(0.12);
              borderColor = AppTheme.primaryCyan.withOpacity(0.3);
            }

            return GestureDetector(
              onTap: () => _selectOption(i),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: optColor,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: borderColor),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: _answered && isCorrect
                            ? const Color(0xFF10B981).withOpacity(0.2)
                            : Colors.white.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          prefix,
                          style: GoogleFonts.outfit(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        q.options[i],
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: textColor,
                          height: 1.4,
                        ),
                      ),
                    ),
                    if (_answered && isCorrect)
                      const Icon(Icons.check_circle_rounded, color: Color(0xFF10B981), size: 22),
                    if (_answered && isSelected && !isCorrect)
                      const Icon(Icons.cancel_rounded, color: Color(0xFFF43F5E), size: 22),
                  ],
                ),
              ),
            );
          }),

          // Explanation
          if (_answered) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.accentAmber.withOpacity(0.08),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppTheme.accentAmber.withOpacity(0.2)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.lightbulb_rounded, color: AppTheme.accentAmber, size: 20),
                  const SizedBox(width: 10),
                  Expanded(
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
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryCyan,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                child: Text(
                  _currentIndex < widget.questions.length - 1 ? 'Sonraki Soru →' : 'Sonuçları Gör',
                  style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildResult() {
    final total = widget.questions.length;
    final pct = (_correctCount / total * 100).round();
    final isGood = pct >= 60;

    final messages = isGood
        ? [
            'Harikasın Şüko! Doktora yolunda emin adımlarla ilerliyorsun! 🚀',
            'Bu parçayı parçaladın! YÖKDİL sana vız gelir! 💪',
            'Tebrikler Şüko ❤️ Bu skorla doktora sınavı çocuk oyuncağı!',
          ]
        : [
            'Kız Şüko, biraz daha çalışman lazım! Ama merak etme, gelişiyorsun 💪',
            'Eh, idare eder ama doktoraya bu kadarla girilmez! Tekrar dene! 🔥',
            'Şüko pes etme! Parçayı bir kez daha oku ve tekrar dene! 📖',
          ];
    final msg = messages[DateTime.now().millisecond % messages.length];

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isGood
                    ? const Color(0xFF10B981).withOpacity(0.15)
                    : const Color(0xFFF59E0B).withOpacity(0.15),
              ),
              child: Center(
                child: Text(
                  isGood ? '🎉' : '📚',
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '$_correctCount / $total',
              style: GoogleFonts.outfit(
                fontSize: 44,
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
            ),
            Text(
              '%$pct Başarı',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: isGood ? const Color(0xFF10B981) : AppTheme.accentAmber,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.06),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                msg,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: AppTheme.textSecondary,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _resetQuiz,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryCyan.withOpacity(0.15),
                      foregroundColor: AppTheme.primaryCyan,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      elevation: 0,
                    ),
                    child: Text('Tekrar Dene',
                        style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryCyan,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    child: Text('Listeye Dön',
                        style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
