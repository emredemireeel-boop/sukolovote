import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/study_stats_service.dart';
import '../services/mistake_service.dart';
import '../widgets/glass_card.dart';
import 'mistakes_screen.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen>
    with TickerProviderStateMixin {
  int _streak = 0;
  int _totalQuestions = 0;
  int _totalCorrect = 0;
  int _totalWrong = 0;
  int _articlesRead = 0;
  int _wordsLearned = 0;
  int _totalStudyDays = 0;
  int _dailyQuestions = 0;
  int _xp = 0;
  int _level = 1;
  double _levelProgress = 0;
  double _successRate = 0;
  String? _weakestCategory;
  List<int> _weeklyQuestions = List.filled(7, 0);
  Map<String, Map<String, int>> _categoryStats = {};
  int _mistakeCount = 0;

  late AnimationController _animController;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnim = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeOutCubic,
    );
    _loadStats();
  }

  Future<void> _loadStats() async {
    _streak = await StudyStatsService.getStreak();
    _totalQuestions = await StudyStatsService.getTotalQuestions();
    _totalCorrect = await StudyStatsService.getTotalCorrect();
    _totalWrong = await StudyStatsService.getTotalWrong();
    _articlesRead = await StudyStatsService.getArticlesRead();
    _wordsLearned = await StudyStatsService.getWordsLearned();
    _totalStudyDays = await StudyStatsService.getTotalStudyDays();
    _dailyQuestions = await StudyStatsService.getDailyQuestionCount();
    _xp = await StudyStatsService.getXP();
    _level = await StudyStatsService.getLevel();
    _levelProgress = await StudyStatsService.getLevelProgress();
    _successRate = await StudyStatsService.getSuccessRate();
    _weakestCategory = await StudyStatsService.getWeakestCategory();
    _weeklyQuestions = await StudyStatsService.getWeeklyQuestions();
    _categoryStats = await StudyStatsService.getCategoryStatsMap();
    _mistakeCount = await MistakeService.getTotalCount();
    setState(() {});
    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnim,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      Text(
                        'İstatistikler',
                        style: GoogleFonts.outfit(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const Spacer(),
                      // Level badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: AppTheme.primaryGradient,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.primaryCyan.withOpacity(0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('⚡', style: TextStyle(fontSize: 14)),
                            const SizedBox(width: 4),
                            Text(
                              'Seviye $_level',
                              style: GoogleFonts.outfit(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Çalışma performansını takip et',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // XP Progress Bar
                  _buildXPBar(),
                  const SizedBox(height: 20),

                  // Streak & Daily Questions
                  Row(
                    children: [
                      Expanded(child: _buildStreakCard()),
                      const SizedBox(width: 12),
                      Expanded(child: _buildDailyCard()),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Toplam İstatistikler
                  _buildTotalStatsRow(),
                  const SizedBox(height: 20),

                  // Haftalık Grafik
                  _buildWeeklyChart(),
                  const SizedBox(height: 20),

                  // Konu Bazlı Başarı
                  if (_categoryStats.isNotEmpty) ...[
                    _buildCategoryStats(),
                    const SizedBox(height: 20),
                  ],

                  // Zayıf Alan Uyarısı
                  if (_weakestCategory != null) _buildWeakAreaAlert(),
                  const SizedBox(height: 16),

                  // Hata Defteri Kartı
                  _buildMistakeCard(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildXPBar() {
    return GlassCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '✨ $_xp XP',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const Spacer(),
              Text(
                'Sonraki seviye: ${(_level) * 100} XP',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: AppTheme.textMuted,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: _levelProgress,
              backgroundColor: Colors.white.withOpacity(0.05),
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFF06B6D4),
              ),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakCard() {
    String streakEmoji = '🔥';
    String streakTitle = 'Streak';
    if (_streak >= 30) {
      streakEmoji = '💎';
      streakTitle = 'Demir İrade!';
    } else if (_streak >= 10) {
      streakEmoji = '⚡';
      streakTitle = 'Harika Gidiyor!';
    } else if (_streak >= 5) {
      streakEmoji = '🔥';
      streakTitle = 'İyi Gidiyorsun!';
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFF59E0B).withOpacity(0.15),
            const Color(0xFFEF4444).withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFF59E0B).withOpacity(0.25),
        ),
      ),
      child: Column(
        children: [
          Text(streakEmoji, style: const TextStyle(fontSize: 32)),
          const SizedBox(height: 8),
          Text(
            '$_streak Gün',
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppTheme.textPrimary,
            ),
          ),
          Text(
            _streak > 0 ? streakTitle : 'Bugün başla!',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: const Color(0xFFF59E0B),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDailyCard() {
    const int dailyGoal = 20;
    final progress = (_dailyQuestions / dailyGoal).clamp(0.0, 1.0);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF10B981).withOpacity(0.15),
            const Color(0xFF06B6D4).withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFF10B981).withOpacity(0.25),
        ),
      ),
      child: Column(
        children: [
          Text(
            progress >= 1.0 ? '🏆' : '📝',
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          Text(
            '$_dailyQuestions/$dailyGoal',
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppTheme.textPrimary,
            ),
          ),
          Text(
            progress >= 1.0 ? 'Hedef Tamam!' : 'Günlük Hedef',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: const Color(0xFF10B981),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.white.withOpacity(0.05),
              valueColor: AlwaysStoppedAnimation<Color>(
                progress >= 1.0
                    ? const Color(0xFF10B981)
                    : const Color(0xFF06B6D4),
              ),
              minHeight: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalStatsRow() {
    return Row(
      children: [
        _buildStatMini('Çözülen', '$_totalQuestions', Icons.quiz_rounded,
            const Color(0xFF6366F1)),
        const SizedBox(width: 8),
        _buildStatMini('Doğru', '$_totalCorrect', Icons.check_circle_rounded,
            const Color(0xFF10B981)),
        const SizedBox(width: 8),
        _buildStatMini('Yanlış', '$_totalWrong', Icons.cancel_rounded,
            const Color(0xFFF43F5E)),
        const SizedBox(width: 8),
        _buildStatMini(
            'Başarı',
            '${_successRate.toStringAsFixed(0)}%',
            Icons.trending_up_rounded,
            const Color(0xFFF59E0B)),
      ],
    );
  }

  Widget _buildStatMini(
      String label, String value, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withOpacity(0.15)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(height: 6),
            Text(
              value,
              style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
            ),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 10,
                color: color,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeeklyChart() {
    final maxVal =
        _weeklyQuestions.isEmpty ? 1 : _weeklyQuestions.reduce((a, b) => a > b ? a : b);
    final days = ['Pzt', 'Sal', 'Çar', 'Per', 'Cum', 'Cmt', 'Paz'];
    // Hangi gün bugün olduğunu hesapla
    final today = DateTime.now().weekday; // 1=Pzt, 7=Paz

    return GlassCard(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '📊 Haftalık Aktivite',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF6366F1).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Son 7 Gün',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF6366F1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(7, (i) {
                final val = _weeklyQuestions[i];
                final height =
                    maxVal == 0 ? 4.0 : (val / maxVal * 90).clamp(4.0, 90.0);
                // i=0 → 6 gün önce, i=6 → bugün
                final dayIndex =
                    (today - 7 + i) % 7; // 0-indexed from Monday
                final isToday = i == 6;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$val',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        color: isToday
                            ? const Color(0xFF06B6D4)
                            : AppTheme.textMuted,
                        fontWeight:
                            isToday ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 28,
                      height: height,
                      decoration: BoxDecoration(
                        gradient: isToday
                            ? const LinearGradient(
                                colors: [Color(0xFF06B6D4), Color(0xFF6366F1)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : LinearGradient(
                                colors: [
                                  const Color(0xFF6366F1).withOpacity(0.4),
                                  const Color(0xFF6366F1).withOpacity(0.2),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      days[dayIndex < 0 ? dayIndex + 7 : dayIndex],
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        color: isToday
                            ? const Color(0xFF06B6D4)
                            : AppTheme.textMuted,
                        fontWeight:
                            isToday ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryStats() {
    final entries = _categoryStats.entries.toList();
    entries.sort((a, b) {
      final totalA = (a.value['correct'] ?? 0) + (a.value['wrong'] ?? 0);
      final totalB = (b.value['correct'] ?? 0) + (b.value['wrong'] ?? 0);
      return totalB.compareTo(totalA);
    });

    final colors = [
      const Color(0xFF06B6D4),
      const Color(0xFF6366F1),
      const Color(0xFF10B981),
      const Color(0xFFF59E0B),
      const Color(0xFFF43F5E),
      const Color(0xFF8B5CF6),
      const Color(0xFFEC4899),
      const Color(0xFF0891B2),
    ];

    return GlassCard(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '🎯 Konu Bazlı Başarı',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          ...entries.asMap().entries.map((e) {
            final idx = e.key;
            final cat = e.value.key;
            final correct = e.value.value['correct'] ?? 0;
            final wrong = e.value.value['wrong'] ?? 0;
            final total = correct + wrong;
            final rate = total > 0 ? correct / total : 0.0;
            final color = colors[idx % colors.length];

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          cat,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ),
                      Text(
                        '$correct/$total',
                        style: GoogleFonts.outfit(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: color,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(rate * 100).toStringAsFixed(0)}%',
                        style: GoogleFonts.outfit(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: rate >= 0.7
                              ? const Color(0xFF10B981)
                              : rate >= 0.5
                                  ? const Color(0xFFF59E0B)
                                  : const Color(0xFFF43F5E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: LinearProgressIndicator(
                      value: rate,
                      backgroundColor: Colors.white.withOpacity(0.05),
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                      minHeight: 5,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildWeakAreaAlert() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFF43F5E).withOpacity(0.12),
            const Color(0xFFEF4444).withOpacity(0.06),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFF43F5E).withOpacity(0.25),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0xFFF43F5E).withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text('⚠️', style: TextStyle(fontSize: 20)),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Zayıf Alan Tespit Edildi',
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFF43F5E),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '"$_weakestCategory" konusuna daha fazla çalış!',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMistakeCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const MistakesScreen()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFEF4444).withOpacity(0.12),
              const Color(0xFFF97316).withOpacity(0.06),
            ],
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xFFEF4444).withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFEF4444).withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text('📝', style: TextStyle(fontSize: 24)),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hata Defteri',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$_mistakeCount yanlış soru kayıtlı',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: const Color(0xFFEF4444),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded,
                size: 16, color: Color(0xFFEF4444)),
          ],
        ),
      ),
    );
  }
}
