import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/vocab_pool_data.dart';
import '../services/spaced_repetition_service.dart';
import '../services/daily_quest_service.dart';
import '../widgets/glass_card.dart';
import 'dart:math';

class SpacedRepetitionScreen extends StatefulWidget {
  const SpacedRepetitionScreen({super.key});

  @override
  State<SpacedRepetitionScreen> createState() => _SpacedRepetitionScreenState();
}

class _SpacedRepetitionScreenState extends State<SpacedRepetitionScreen> {
  bool _isLoading = true;
  List<VocabWord> _dueWords = [];
  Map<int, int> _boxCounts = {};
  int _masteredCount = 0;

  bool _isReviewing = false;
  int _currentReviewIndex = 0;
  bool _isFlipped = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);

    final dueWordStrings = await SpacedRepetitionService.getDueWords();
    final counts = await SpacedRepetitionService.getBoxCounts();
    final mastered = await SpacedRepetitionService.getMasteredWords();

    // Map strings to VocabWord objects
    _dueWords = [];
    for (var str in dueWordStrings) {
      final wordObj = vocabWords.firstWhere((w) => w.english == str, orElse: () => vocabWords.first);
      if (wordObj.english == str) {
        _dueWords.add(wordObj);
      }
    }
    
    _dueWords.shuffle();

    setState(() {
      _boxCounts = counts;
      _masteredCount = mastered.length;
      _isLoading = false;
    });
  }

  Future<void> _add10NewWords() async {
    setState(() => _isLoading = true);
    
    final learning = await SpacedRepetitionService.getLearningWords();
    final mastered = await SpacedRepetitionService.getMasteredWords();
    final allTracked = {...learning, ...mastered};

    final untracked = vocabWords.where((w) => !allTracked.contains(w.english)).toList()..shuffle();
    final toAdd = untracked.take(10).toList();

    for (var w in toAdd) {
      await SpacedRepetitionService.addWord(w.english);
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${toAdd.length} yeni kelime eklendi!', style: GoogleFonts.inter()),
          backgroundColor: AppTheme.primaryCyan,
        ),
      );
    }

    _loadData();
  }

  void _startReview() {
    if (_dueWords.isEmpty) return;
    setState(() {
      _isReviewing = true;
      _currentReviewIndex = 0;
      _isFlipped = false;
    });
  }

  Future<void> _answerCard(bool isCorrect) async {
    final word = _dueWords[_currentReviewIndex];
    
    if (isCorrect) {
      await SpacedRepetitionService.markCorrect(word.english);
    } else {
      await SpacedRepetitionService.markIncorrect(word.english);
    }

    DailyQuestService.progressQuest('q_sr_review_20', 1);

    if (_currentReviewIndex < _dueWords.length - 1) {
      setState(() {
        _currentReviewIndex++;
        _isFlipped = false;
      });
    } else {
      // Bitti
      setState(() {
        _isReviewing = false;
      });
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: _isReviewing ? _buildReviewScreen() : _buildDashboard(),
        ),
      ),
    );
  }

  Widget _buildDashboard() {
    final totalLearning = (_boxCounts[1] ?? 0) + (_boxCounts[2] ?? 0) + (_boxCounts[3] ?? 0) + (_boxCounts[4] ?? 0);

    return Column(
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
                      'Aralıklı Tekrar Sistemi',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      'Unutma eğrisini yen!',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Toplam durum
                Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        'Öğrenilen',
                        '$_masteredCount',
                        AppTheme.accentEmerald,
                        Icons.check_circle_rounded,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildStatCard(
                        'Öğrenilen (Box 1-4)',
                        '$totalLearning',
                        AppTheme.primaryCyan,
                        Icons.loop_rounded,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Kutular
                Text(
                  'Kutu Durumu (Leitner Sistemi)',
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildBoxItem(1, _boxCounts[1] ?? 0, const Color(0xFFF43F5E)),
                    _buildBoxItem(2, _boxCounts[2] ?? 0, const Color(0xFFF59E0B)),
                    _buildBoxItem(3, _boxCounts[3] ?? 0, const Color(0xFF3B82F6)),
                    _buildBoxItem(4, _boxCounts[4] ?? 0, const Color(0xFF8B5CF6)),
                  ],
                ),
                const SizedBox(height: 32),

                // Main Actions
                GlassCard(
                  padding: const EdgeInsets.all(24),
                  borderColor: _dueWords.isNotEmpty ? AppTheme.accentEmerald.withOpacity(0.3) : Colors.white.withOpacity(0.1),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: _dueWords.isNotEmpty ? AppTheme.accentEmerald.withOpacity(0.15) : Colors.white.withOpacity(0.05),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '${_dueWords.length}',
                            style: GoogleFonts.outfit(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: _dueWords.isNotEmpty ? AppTheme.accentEmerald : AppTheme.textMuted,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Bugün Tekrar Edilecekler',
                        style: GoogleFonts.outfit(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _dueWords.isNotEmpty 
                            ? 'Unutmamak için kelimeleri tekrar etme zamanı!'
                            : 'Bugün için tüm tekrarlarını tamamladın! Harikasın!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _dueWords.isNotEmpty ? _startReview : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.accentEmerald,
                            disabledBackgroundColor: Colors.white.withOpacity(0.1),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          child: Text(
                            'Tekrara Başla',
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: _dueWords.isNotEmpty ? Colors.white : AppTheme.textMuted,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: _add10NewWords,
                    icon: const Icon(Icons.add_rounded, color: AppTheme.primaryCyan),
                    label: Text(
                      '10 Yeni Kelime Öğren',
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryCyan,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: AppTheme.primaryCyan.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: AppTheme.primaryCyan.withOpacity(0.2)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBoxItem(int boxNumber, int count, Color color) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withOpacity(0.3)),
          ),
          child: Center(
            child: Text(
              '$count',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Kutu $boxNumber',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppTheme.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, Color color, IconData icon) {
    return GlassCard(
      padding: const EdgeInsets.all(16),
      borderColor: color.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 12),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  // ─── FLASHCARD SCREEN ────────────────────────────────

  Widget _buildReviewScreen() {
    final word = _dueWords[_currentReviewIndex];

    return Column(
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() => _isReviewing = false);
                  _loadData();
                },
                icon: const Icon(Icons.close_rounded, color: AppTheme.textPrimary, size: 24),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Tekrar',
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      '${_currentReviewIndex + 1} / ${_dueWords.length}',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 48), // Denge için
            ],
          ),
        ),

        // Progress
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: (_currentReviewIndex) / _dueWords.length,
              backgroundColor: Colors.white.withOpacity(0.05),
              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryCyan),
              minHeight: 4,
            ),
          ),
        ),
        const SizedBox(height: 40),

        // Flashcard
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                if (!_isFlipped) setState(() => _isFlipped = true);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.darkCard,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white.withOpacity(0.1)),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.primaryCyan.withOpacity(0.05),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (!_isFlipped) ...[
                          Text(
                            word.english,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Cevabı görmek için dokun',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ] else ...[
                          Text(
                            word.turkish,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.accentEmerald,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryIndigo.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              word.category,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF818CF8),
                              ),
                            ),
                          ),
                          if (word.example != null && word.example!.isNotEmpty) ...[
                            const SizedBox(height: 32),
                            Text(
                              'Örnek Cümle:',
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: AppTheme.textMuted,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              word.example!,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: AppTheme.textSecondary,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),

        // Actions
        if (_isFlipped)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _answerCard(false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.accentRose.withOpacity(0.15),
                      foregroundColor: AppTheme.accentRose,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: AppTheme.accentRose.withOpacity(0.3)),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.close_rounded, size: 28),
                        const SizedBox(height: 4),
                        Text(
                          'Bilemedim\n(Tekrar Kutu 1)',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _answerCard(true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.accentEmerald.withOpacity(0.15),
                      foregroundColor: AppTheme.accentEmerald,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: AppTheme.accentEmerald.withOpacity(0.3)),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.check_rounded, size: 28),
                        const SizedBox(height: 4),
                        Text(
                          'Bildim\n(Sonraki Kutu)',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        else
          const SizedBox(height: 104), // Space placeholder to avoid UI jump
      ],
    );
  }
}
