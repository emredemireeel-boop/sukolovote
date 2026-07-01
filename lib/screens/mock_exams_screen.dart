import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/mock_exams_data.dart';

class MockExamsScreen extends StatelessWidget {
  const MockExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
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
                            'Çıkmış Sınavlar',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Gerçek sınav formatında interaktif denemeler',
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
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  physics: const BouncingScrollPhysics(),
                  itemCount: mockExams.length,
                  itemBuilder: (context, index) =>
                      _ExamCard(exam: mockExams[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExamCard extends StatelessWidget {
  final MockExam exam;
  const _ExamCard({required this.exam});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => _ExamIntroScreen(exam: exam)),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.primaryIndigo.withValues(alpha: 0.18),
              AppTheme.primaryCyan.withValues(alpha: 0.08),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: AppTheme.primaryCyan.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  '${exam.year}',
                  style: GoogleFonts.outfit(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.primaryCyan,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exam.title,
                    style: GoogleFonts.outfit(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.help_outline_rounded,
                          size: 14, color: AppTheme.textMuted),
                      const SizedBox(width: 4),
                      Text(
                        '${exam.questions.length} soru',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: AppTheme.textMuted),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.timer_outlined,
                          size: 14, color: AppTheme.textMuted),
                      const SizedBox(width: 4),
                      Text(
                        '${exam.durationMinutes} dk',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: AppTheme.textMuted),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.play_circle_fill_rounded,
                color: AppTheme.primaryCyan, size: 34),
          ],
        ),
      ),
    );
  }
}

// ─── SINAV GİRİŞ EKRANI ───
class _ExamIntroScreen extends StatelessWidget {
  final MockExam exam;
  const _ExamIntroScreen({required this.exam});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_rounded,
                          color: AppTheme.textPrimary, size: 22),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryCyan.withValues(alpha: 0.15),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.assignment_rounded,
                              color: AppTheme.primaryCyan, size: 44),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          exam.title,
                          style: GoogleFonts.outfit(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          exam.subtitle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textMuted,
                          ),
                        ),
                        const SizedBox(height: 28),
                        _infoRow(Icons.help_outline_rounded,
                            '${exam.questions.length} soru'),
                        _infoRow(Icons.timer_outlined,
                            '${exam.durationMinutes} dakika süre'),
                        _infoRow(Icons.check_circle_outline_rounded,
                            'Anında geri bildirim ve açıklama'),
                        _infoRow(Icons.rate_review_outlined,
                            'Sınav sonunda detaylı inceleme'),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => _ExamRunnerScreen(exam: exam),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryCyan,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            child: Text(
                              'Sınava Başla',
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
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

  Widget _infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: AppTheme.primaryCyan, size: 20),
          const SizedBox(width: 12),
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
}

// ─── SINAV ÇALIŞTIRICI ───
class _ExamRunnerScreen extends StatefulWidget {
  final MockExam exam;
  const _ExamRunnerScreen({required this.exam});

  @override
  State<_ExamRunnerScreen> createState() => _ExamRunnerScreenState();
}

class _ExamRunnerScreenState extends State<_ExamRunnerScreen> {
  late List<int?> _answers;
  int _current = 0;
  late int _remainingSeconds;
  Timer? _timer;
  bool _submitted = false;

  @override
  void initState() {
    super.initState();
    _answers = List<int?>.filled(widget.exam.questions.length, null);
    _remainingSeconds = widget.exam.durationMinutes * 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_remainingSeconds <= 0) {
        _finish();
      } else {
        setState(() => _remainingSeconds--);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _timeText {
    final m = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    final s = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  int get _answeredCount => _answers.where((a) => a != null).length;

  void _select(int optionIndex) {
    setState(() => _answers[_current] = optionIndex);
  }

  void _finish() {
    _timer?.cancel();
    setState(() => _submitted = true);
    int correct = 0;
    for (int i = 0; i < widget.exam.questions.length; i++) {
      if (_answers[i] == widget.exam.questions[i].correctIndex) correct++;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => _ExamResultScreen(
            exam: widget.exam,
            answers: _answers,
            correct: correct,
          ),
        ),
      );
    });
  }

  Future<void> _confirmFinish() async {
    final unanswered = widget.exam.questions.length - _answeredCount;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkBg,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text('Sınavı bitir?',
            style: GoogleFonts.outfit(
                color: AppTheme.textPrimary, fontWeight: FontWeight.w600)),
        content: Text(
          unanswered > 0
              ? '$unanswered soru boş. Yine de bitirmek istiyor musun?'
              : 'Tüm soruları yanıtladın. Sonuçları görmek ister misin?',
          style: GoogleFonts.inter(color: AppTheme.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text('Devam Et',
                style: GoogleFonts.inter(color: AppTheme.textMuted)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryCyan),
            child: Text('Bitir',
                style: GoogleFonts.inter(
                    color: Colors.white, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
    if (ok == true && !_submitted) _finish();
  }

  @override
  Widget build(BuildContext context) {
    final q = widget.exam.questions[_current];
    final selected = _answers[_current];
    final timeLow = _remainingSeconds < 60;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmExit();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
          child: SafeArea(
            child: Column(
              children: [
                // Top bar: exit + timer + finish
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _confirmExit,
                        icon: const Icon(Icons.close_rounded,
                            color: AppTheme.textPrimary, size: 22),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        decoration: BoxDecoration(
                          color: (timeLow
                                  ? const Color(0xFFF43F5E)
                                  : AppTheme.primaryCyan)
                              .withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.timer_outlined,
                                size: 16,
                                color: timeLow
                                    ? const Color(0xFFF43F5E)
                                    : AppTheme.primaryCyan),
                            const SizedBox(width: 6),
                            Text(
                              _timeText,
                              style: GoogleFonts.outfit(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: timeLow
                                    ? const Color(0xFFF43F5E)
                                    : AppTheme.primaryCyan,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: _confirmFinish,
                        child: Text('Bitir',
                            style: GoogleFonts.inter(
                                color: AppTheme.accentEmerald,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),

                // Progress
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Soru ${_current + 1}/${widget.exam.questions.length}',
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.primaryCyan),
                          ),
                          const Spacer(),
                          Text(
                            'İşaretlenen: $_answeredCount',
                            style: GoogleFonts.inter(
                                fontSize: 12, color: AppTheme.textMuted),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: (_current + 1) /
                              widget.exam.questions.length,
                          backgroundColor:
                              Colors.white.withValues(alpha: 0.06),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AppTheme.primaryCyan),
                          minHeight: 4,
                        ),
                      ),
                    ],
                  ),
                ),

                // Question body
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryIndigo
                                .withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            q.type,
                            style: GoogleFonts.inter(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.primaryIndigo),
                          ),
                        ),
                        if (q.passageRef != null) ...[
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.05),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color:
                                      Colors.white.withValues(alpha: 0.08)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  q.passageRef!,
                                  style: GoogleFonts.inter(
                                    fontSize: 13.5,
                                    height: 1.7,
                                    color: AppTheme.textSecondary,
                                  ),
                                ),
                                if (q.passageRefTr != null) ...[
                                  const SizedBox(height: 10),
                                  const Divider(
                                      color: Colors.white24, height: 1),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Icon(Icons.translate_rounded,
                                          size: 14,
                                          color: AppTheme.accentAmber),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Türkçe çeviri',
                                        style: GoogleFonts.inter(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: AppTheme.accentAmber,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    q.passageRefTr!,
                                    style: GoogleFonts.inter(
                                      fontSize: 13,
                                      height: 1.7,
                                      color: AppTheme.textMuted,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                        const SizedBox(height: 14),
                        Text(
                          q.question,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 18),
                        ...List.generate(q.options.length, (i) {
                          final isSel = selected == i;
                          final prefix = String.fromCharCode(65 + i);
                          return GestureDetector(
                            onTap: () => _select(i),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: isSel
                                    ? AppTheme.primaryCyan
                                        .withValues(alpha: 0.15)
                                    : Colors.white.withValues(alpha: 0.06),
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: isSel
                                      ? AppTheme.primaryCyan
                                          .withValues(alpha: 0.5)
                                      : Colors.white
                                          .withValues(alpha: 0.08),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: isSel
                                          ? AppTheme.primaryCyan
                                          : Colors.white
                                              .withValues(alpha: 0.06),
                                      borderRadius:
                                          BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        prefix,
                                        style: GoogleFonts.outfit(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: isSel
                                              ? Colors.white
                                              : AppTheme.textSecondary,
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
                                        height: 1.4,
                                        color: AppTheme.textPrimary,
                                      ),
                                    ),
                                  ),
                                  if (isSel)
                                    const Icon(Icons.check_circle_rounded,
                                        color: AppTheme.primaryCyan,
                                        size: 22),
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),

                // Bottom navigation
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.2),
                    border: Border(
                      top: BorderSide(
                          color: Colors.white.withValues(alpha: 0.06)),
                    ),
                  ),
                  child: Row(
                    children: [
                      _navButton(
                        icon: Icons.arrow_back_rounded,
                        label: 'Önceki',
                        enabled: _current > 0,
                        onTap: () => setState(() => _current--),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: _openGrid,
                        child: Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.grid_view_rounded,
                              color: AppTheme.textPrimary, size: 20),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _current <
                                widget.exam.questions.length - 1
                            ? _navButton(
                                icon: Icons.arrow_forward_rounded,
                                label: 'Sonraki',
                                enabled: true,
                                primary: true,
                                trailingIcon: true,
                                onTap: () => setState(() => _current++),
                              )
                            : _navButton(
                                icon: Icons.flag_rounded,
                                label: 'Bitir',
                                enabled: true,
                                primary: true,
                                onTap: _confirmFinish,
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navButton({
    required IconData icon,
    required String label,
    required bool enabled,
    required VoidCallback onTap,
    bool primary = false,
    bool trailingIcon = false,
  }) {
    final child = Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: primary
            ? AppTheme.primaryCyan
            : Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!trailingIcon)
            Icon(icon,
                size: 18,
                color: primary ? Colors.white : AppTheme.textPrimary),
          if (!trailingIcon) const SizedBox(width: 6),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: primary ? Colors.white : AppTheme.textPrimary,
            ),
          ),
          if (trailingIcon) const SizedBox(width: 6),
          if (trailingIcon)
            Icon(icon,
                size: 18,
                color: primary ? Colors.white : AppTheme.textPrimary),
        ],
      ),
    );
    if (primary) {
      return GestureDetector(onTap: onTap, child: child);
    }
    return Opacity(
      opacity: enabled ? 1 : 0.4,
      child: GestureDetector(onTap: enabled ? onTap : null, child: child),
    );
  }

  void _openGrid() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.darkBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Soruya git',
                style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary)),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(widget.exam.questions.length, (i) {
                final answered = _answers[i] != null;
                final isCurrent = i == _current;
                return GestureDetector(
                  onTap: () {
                    setState(() => _current = i);
                    Navigator.pop(ctx);
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: isCurrent
                          ? AppTheme.primaryCyan
                          : answered
                              ? AppTheme.accentEmerald.withValues(alpha: 0.25)
                              : Colors.white.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isCurrent
                            ? AppTheme.primaryCyan
                            : Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${i + 1}',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: isCurrent
                              ? Colors.white
                              : AppTheme.textPrimary,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmExit() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkBg,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text('Sınavdan çık?',
            style: GoogleFonts.outfit(
                color: AppTheme.textPrimary, fontWeight: FontWeight.w600)),
        content: Text('İlerlemen kaydedilmeyecek.',
            style: GoogleFonts.inter(color: AppTheme.textSecondary)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text('Vazgeç',
                style: GoogleFonts.inter(color: AppTheme.textMuted)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF43F5E)),
            child: Text('Çık',
                style: GoogleFonts.inter(
                    color: Colors.white, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
    if (ok == true && mounted) {
      _timer?.cancel();
      Navigator.pop(context);
    }
  }
}

// ─── SONUÇ EKRANI ───
class _ExamResultScreen extends StatelessWidget {
  final MockExam exam;
  final List<int?> answers;
  final int correct;
  const _ExamResultScreen({
    required this.exam,
    required this.answers,
    required this.correct,
  });

  @override
  Widget build(BuildContext context) {
    final total = exam.questions.length;
    final wrong = answers
        .asMap()
        .entries
        .where((e) =>
            e.value != null &&
            e.value != exam.questions[e.key].correctIndex)
        .length;
    final blank = answers.where((a) => a == null).length;
    final pct = (correct / total * 100).round();
    final isGood = pct >= 60;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Sınav Sonucu',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.popUntil(
                          context, (r) => r.isFirst),
                      icon: const Icon(Icons.home_rounded,
                          color: AppTheme.textPrimary),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isGood
                                  ? AppTheme.accentEmerald
                                  : AppTheme.accentAmber)
                              .withValues(alpha: 0.15),
                        ),
                        child: Center(
                          child: Text(
                            '%$pct',
                            style: GoogleFonts.outfit(
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                              color: isGood
                                  ? AppTheme.accentEmerald
                                  : AppTheme.accentAmber,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        '$correct / $total doğru',
                        style: GoogleFonts.outfit(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _statBox('Doğru', correct, AppTheme.accentEmerald),
                        const SizedBox(width: 10),
                        _statBox('Yanlış', wrong, const Color(0xFFF43F5E)),
                        const SizedBox(width: 10),
                        _statBox('Boş', blank, AppTheme.textMuted),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.06),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Text(
                        isGood
                            ? 'Süpersin! Bu tempoda YÖKDİL\'de yüksek puan senin olur 🚀'
                            : 'İyi bir başlangıç! Yanlışları aşağıdan incele, açıklamaları oku ve tekrar dene 💪',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          height: 1.5,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Cevap İncelemesi',
                      style: GoogleFonts.outfit(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...List.generate(total, (i) {
                      return _ReviewTile(
                        question: exam.questions[i],
                        userAnswer: answers[i],
                      );
                    }),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => _ExamRunnerScreen(exam: exam),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryCyan,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        child: Text('Tekrar Çöz',
                            style: GoogleFonts.inter(
                                fontSize: 15, fontWeight: FontWeight.w700)),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statBox(String label, int value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text('$value',
                style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: color)),
            const SizedBox(height: 2),
            Text(label,
                style:
                    GoogleFonts.inter(fontSize: 12, color: AppTheme.textMuted)),
          ],
        ),
      ),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  final ExamQuestion question;
  final int? userAnswer;
  const _ReviewTile({required this.question, required this.userAnswer});

  @override
  Widget build(BuildContext context) {
    final isCorrect = userAnswer == question.correctIndex;
    final isBlank = userAnswer == null;
    final statusColor = isBlank
        ? AppTheme.textMuted
        : isCorrect
            ? AppTheme.accentEmerald
            : const Color(0xFFF43F5E);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: statusColor.withValues(alpha: 0.3)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          childrenPadding:
              const EdgeInsets.fromLTRB(16, 0, 16, 16),
          iconColor: AppTheme.textMuted,
          collapsedIconColor: AppTheme.textMuted,
          leading: Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Center(
              child: Icon(
                isBlank
                    ? Icons.remove_rounded
                    : isCorrect
                        ? Icons.check_rounded
                        : Icons.close_rounded,
                color: statusColor,
                size: 20,
              ),
            ),
          ),
          title: Text(
            'Soru ${question.number} • ${question.type}',
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          subtitle: Text(
            isBlank
                ? 'Boş bırakıldı'
                : isCorrect
                    ? 'Doğru'
                    : 'Yanlış',
            style: GoogleFonts.inter(fontSize: 12, color: statusColor),
          ),
          children: [
            if (question.passageRef != null) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.passageRef!,
                      style: GoogleFonts.inter(
                        fontSize: 12.5,
                        height: 1.6,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    if (question.passageRefTr != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        question.passageRefTr!,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          height: 1.6,
                          fontStyle: FontStyle.italic,
                          color: AppTheme.textMuted,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                question.question,
                style: GoogleFonts.inter(
                  fontSize: 13.5,
                  height: 1.5,
                  color: AppTheme.textSecondary,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...List.generate(question.options.length, (i) {
              final isCorrectOpt = i == question.correctIndex;
              final isUserOpt = i == userAnswer;
              Color c = AppTheme.textMuted;
              if (isCorrectOpt) {
                c = AppTheme.accentEmerald;
              } else if (isUserOpt) {
                c = const Color(0xFFF43F5E);
              }
              final tr = question.optionsTr != null &&
                      i < question.optionsTr!.length
                  ? question.optionsTr![i]
                  : null;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${String.fromCharCode(65 + i)}. ',
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: c),
                        ),
                        Expanded(
                          child: Text(
                            question.options[i],
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: c,
                              fontWeight: (isCorrectOpt || isUserOpt)
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                        if (isCorrectOpt)
                          const Icon(Icons.check_circle_rounded,
                              size: 16, color: AppTheme.accentEmerald),
                        if (isUserOpt && !isCorrectOpt)
                          const Icon(Icons.cancel_rounded,
                              size: 16, color: Color(0xFFF43F5E)),
                      ],
                    ),
                    if (tr != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 2),
                        child: Text(
                          tr,
                          style: GoogleFonts.inter(
                            fontSize: 11.5,
                            fontStyle: FontStyle.italic,
                            color: AppTheme.textMuted,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.accentEmerald.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppTheme.accentEmerald.withValues(alpha: 0.3)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.check_circle_rounded,
                      size: 16, color: AppTheme.accentEmerald),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Doğru cevap: ${question.correctLetter}. ${question.correctText}',
                      style: GoogleFonts.inter(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                        color: AppTheme.accentEmerald,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.accentAmber.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.lightbulb_rounded,
                      size: 16, color: AppTheme.accentAmber),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      question.explanation,
                      style: GoogleFonts.inter(
                        fontSize: 12.5,
                        height: 1.5,
                        color: AppTheme.textSecondary,
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
}
