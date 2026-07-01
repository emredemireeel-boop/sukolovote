import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme.dart';
import '../widgets/glass_card.dart';

class StudyPlanScreen extends StatefulWidget {
  const StudyPlanScreen({super.key});

  @override
  State<StudyPlanScreen> createState() => _StudyPlanScreenState();
}

class _StudyPlanScreenState extends State<StudyPlanScreen> {
  final Map<String, bool> _completedTasks = {};

  final DateTime examDate = DateTime(2026, 8, 9, 10, 15, 0);

  int get daysUntilExam {
    return examDate.difference(DateTime.now()).inDays;
  }

  List<StudyWeek> get studyPlan {
    final now = DateTime.now();
    final weeks = <StudyWeek>[];

    if (daysUntilExam <= 0) return weeks;

    // Kalan haftaya göre plan oluştur
    final totalWeeks = (daysUntilExam / 7).ceil();

    if (totalWeeks >= 6) {
      weeks.add(StudyWeek(
        title: 'Hafta 1-2: Gramer Temeli',
        icon: '📐',
        color: AppTheme.primaryCyan,
        tasks: [
          'Tense yapılarını tekrar et (Present Perfect, Past Perfect)',
          'Bağlaçlar tablosunu ezberle (Although/Despite, Because/Due to)',
          'Passive Voice kalıplarını çalış',
          'If Clause tiplerini öğren',
          'Relative Clause kurallarını tekrar et',
          'Her gün 10 gramer sorusu çöz',
        ],
      ));
    }

    if (totalWeeks >= 5) {
      weeks.add(StudyWeek(
        title: 'Hafta 3-4: Kelime & Terimler',
        icon: '🏥',
        color: AppTheme.primaryTeal,
        tasks: [
          'Her gün 20 sağlık terimi ezberle',
          'Anatomi terimlerini öğren',
          'Hastalık terimlerini çalış',
          'Tedavi & İlaç terimlerini öğren',
          'Phrasal verb listesini çalış',
          'Preposition kalıplarını ezberle (suffer FROM, result IN...)',
          'Öğrendiğin terimleri cümle içinde kullan',
        ],
      ));
    }

    if (totalWeeks >= 3) {
      weeks.add(StudyWeek(
        title: 'Hafta 5-6: Soru Pratiği',
        icon: '📝',
        color: AppTheme.primaryIndigo,
        tasks: [
          'Cloze test paragrafları çöz (2 paragraf/gün)',
          'Cümle tamamlama soruları çöz (5 soru/gün)',
          'Çeviri pratiği yap (TR→EN ve EN→TR)',
          'Anlam bütünlüğünü bozan cümle soruları çöz',
          'Paragraf tamamlama soruları çöz',
          'Hatalı soruları tekrar analiz et',
        ],
      ));
    }

    weeks.add(StudyWeek(
      title: 'Son Hafta: Final Hazırlık',
      icon: '🎯',
      color: AppTheme.accentAmber,
      tasks: [
        'Çıkmış sınav sorularını tam sınav formatında çöz',
        '180 dakika süre tut',
        'Eksik konuları belirle ve hızlı tekrar yap',
        'Sağlık terimleri kartlarını son kez gözden geçir',
        'Gramer kurallarını hızlı tekrar et',
        'Sınav günü stratejini belirle (hangi bölümden başlayacaksın?)',
        'Erken yat, dinlenmiş gel! 💪',
      ],
    ));

    return weeks;
  }

  @override
  void initState() {
    super.initState();
    _loadCompletedTasks();
  }

  Future<void> _loadCompletedTasks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final keys = prefs.getKeys().where((k) => k.startsWith('task_'));
      for (var key in keys) {
        _completedTasks[key] = prefs.getBool(key) ?? false;
      }
      setState(() {});
    } catch (_) {}
  }

  Future<void> _toggleTask(String taskKey) async {
    setState(() {
      _completedTasks[taskKey] = !(_completedTasks[taskKey] ?? false);
    });
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(taskKey, _completedTasks[taskKey] ?? false);
    } catch (_) {}
  }

  int get completedCount =>
      _completedTasks.values.where((v) => v).length;

  int get totalTasks {
    int count = 0;
    for (var week in studyPlan) {
      count += week.tasks.length;
    }
    return count;
  }

  double get progressPercent {
    if (totalTasks == 0) return 0;
    return completedCount / totalTasks;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Çalışma Planı',
                  style: GoogleFonts.outfit(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Sınava $daysUntilExam gün kaldı',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: daysUntilExam < 14
                        ? AppTheme.accentRose
                        : AppTheme.primaryCyan,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Progress Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.accentEmerald.withOpacity(0.1),
                    AppTheme.primaryTeal.withOpacity(0.05),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppTheme.accentEmerald.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Stack(
                      children: [
                        CircularProgressIndicator(
                          value: progressPercent,
                          backgroundColor: Colors.white.withOpacity(0.08),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AppTheme.accentEmerald),
                          strokeWidth: 6,
                        ),
                        Center(
                          child: Text(
                            '${(progressPercent * 100).toInt()}%',
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.accentEmerald,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Genel İlerleme',
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '$completedCount / $totalTasks görev tamamlandı',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Study Weeks
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: studyPlan.length,
              itemBuilder: (context, weekIndex) {
                final week = studyPlan[weekIndex];
                return _buildWeekCard(week, weekIndex);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekCard(StudyWeek week, int weekIndex) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: AppTheme.glassDecoration(opacity: 0.06),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          childrenPadding: const EdgeInsets.fromLTRB(18, 0, 18, 14),
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: week.color.withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(week.icon, style: const TextStyle(fontSize: 22)),
            ),
          ),
          title: Text(
            week.title,
            style: GoogleFonts.outfit(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          subtitle: Text(
            '${week.tasks.length} görev',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: week.color,
            ),
          ),
          iconColor: AppTheme.textMuted,
          collapsedIconColor: AppTheme.textMuted,
          initiallyExpanded: weekIndex == 0,
          children: week.tasks.asMap().entries.map((entry) {
            final taskKey = 'task_${weekIndex}_${entry.key}';
            final isCompleted = _completedTasks[taskKey] ?? false;
            return GestureDetector(
              onTap: () => _toggleTask(taskKey),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: isCompleted
                      ? AppTheme.accentEmerald.withOpacity(0.06)
                      : Colors.white.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isCompleted
                        ? AppTheme.accentEmerald.withOpacity(0.15)
                        : Colors.white.withOpacity(0.04),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      isCompleted
                          ? Icons.check_circle_rounded
                          : Icons.circle_outlined,
                      size: 22,
                      color: isCompleted
                          ? AppTheme.accentEmerald
                          : AppTheme.textMuted,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: isCompleted
                              ? AppTheme.accentEmerald
                              : AppTheme.textSecondary,
                          decoration: isCompleted
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class StudyWeek {
  final String title;
  final String icon;
  final Color color;
  final List<String> tasks;

  const StudyWeek({
    required this.title,
    required this.icon,
    required this.color,
    required this.tasks,
  });
}
