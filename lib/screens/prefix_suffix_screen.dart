import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/prefix_suffix_data.dart';
import '../widgets/glass_card.dart';
import '../services/study_stats_service.dart';

class PrefixSuffixScreen extends StatefulWidget {
  const PrefixSuffixScreen({super.key});

  @override
  State<PrefixSuffixScreen> createState() => _PrefixSuffixScreenState();
}

class _PrefixSuffixScreenState extends State<PrefixSuffixScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _searchQuery = '';
  String _selectedType = 'Tümü';
  final List<String> _types = ['Tümü', 'Prefix', 'Suffix', 'Root'];

  // Quiz state
  int _quizIndex = 0;
  int _quizCorrect = 0;
  int _quizTotal = 0;
  bool _quizAnswered = false;
  int? _quizSelected;
  late List<_QuizQuestion> _quizQuestions;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _generateQuiz();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _generateQuiz() {
    final rng = Random();
    final allAffixes = List<AffixItem>.from(medicalAffixes)..shuffle(rng);
    _quizQuestions = allAffixes.take(15).map((item) {
      // Generate 3 wrong options from other items of same type
      final others = medicalAffixes.where((o) => o.affix != item.affix).toList()..shuffle(rng);
      final wrongMeanings = others.take(3).map((o) => o.meaning).toList();
      final allOptions = [item.meaning, ...wrongMeanings]..shuffle(rng);
      final correctIndex = allOptions.indexOf(item.meaning);
      return _QuizQuestion(
        affix: item.affix,
        type: item.type,
        correctMeaning: item.meaning,
        options: allOptions,
        correctIndex: correctIndex,
        tip: item.tip,
      );
    }).toList();
    _quizIndex = 0;
    _quizCorrect = 0;
    _quizTotal = 0;
    _quizAnswered = false;
    _quizSelected = null;
  }

  List<AffixItem> get _filteredItems {
    return medicalAffixes.where((item) {
      final matchesSearch = item.affix.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          item.meaning.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          item.examples.any((e) => e.toLowerCase().contains(_searchQuery.toLowerCase()));
      final matchesType = _selectedType == 'Tümü' || item.type == _selectedType;
      return matchesSearch && matchesType;
    }).toList();
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
                      icon: const Icon(Icons.arrow_back_ios_rounded, color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kök ve Ek Rehberi',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            '${medicalAffixes.length} ek & kök · ${wordBreakdowns.length} kelime anatomisi',
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

              // Tab Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: AppTheme.primaryCyan.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppTheme.primaryCyan.withOpacity(0.4)),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: const EdgeInsets.all(3),
                  dividerColor: Colors.transparent,
                  labelColor: AppTheme.primaryCyan,
                  unselectedLabelColor: AppTheme.textMuted,
                  labelStyle: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600),
                  unselectedLabelStyle: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(text: '📖 Rehber'),
                    Tab(text: '🧬 Anatomi'),
                    Tab(text: '🧠 Quiz'),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildGuideTab(),
                    _buildAnatomyTab(),
                    _buildQuizTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ═══════════════════ TAB 1: REHBER ═══════════════════
  Widget _buildGuideTab() {
    return Column(
      children: [
        // Search
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: TextField(
            onChanged: (value) => setState(() => _searchQuery = value),
            style: GoogleFonts.inter(color: AppTheme.textPrimary, fontSize: 14),
            decoration: InputDecoration(
              hintText: 'Ek, kök veya anlam ara...',
              hintStyle: GoogleFonts.inter(color: AppTheme.textMuted),
              prefixIcon: const Icon(Icons.search_rounded, color: AppTheme.textMuted, size: 20),
              filled: true,
              fillColor: Colors.white.withOpacity(0.05),
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppTheme.primaryCyan),
              ),
            ),
          ),
        ),
        // Filters
        SizedBox(
          height: 48,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: _types.length,
            itemBuilder: (context, index) {
              final type = _types[index];
              final isSelected = _selectedType == type;
              final count = type == 'Tümü'
                  ? medicalAffixes.length
                  : medicalAffixes.where((a) => a.type == type).length;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                child: GestureDetector(
                  onTap: () => setState(() => _selectedType = type),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: isSelected ? AppTheme.primaryCyan.withOpacity(0.2) : Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? AppTheme.primaryCyan.withOpacity(0.5) : Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${type == 'Tümü' ? 'Tümü' : type == 'Prefix' ? 'Ön Ek' : type == 'Suffix' ? 'Son Ek' : 'Kök'} ($count)',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                          color: isSelected ? AppTheme.primaryCyan : AppTheme.textSecondary,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // List
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            itemCount: _filteredItems.length,
            itemBuilder: (context, index) {
              final item = _filteredItems[index];
              return _buildAffixCard(item);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAffixCard(AffixItem item) {
    final typeColor = item.type == 'Prefix'
        ? const Color(0xFF818CF8)
        : item.type == 'Suffix'
            ? const Color(0xFFF472B6)
            : AppTheme.accentEmerald;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GlassCard(
        padding: const EdgeInsets.all(16),
        borderColor: typeColor.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  item.affix,
                  style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: typeColor,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: typeColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    item.type == 'Prefix' ? 'Ön Ek' : item.type == 'Suffix' ? 'Son Ek' : 'Kök',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: typeColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              item.meaning,
              style: GoogleFonts.inter(
                fontSize: 15,
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            // Examples
            ...item.examples.map((example) {
              final parts = example.split(' – ');
              return Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ', style: TextStyle(color: typeColor, fontWeight: FontWeight.w700)),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.inter(fontSize: 14, height: 1.4),
                          children: [
                            TextSpan(
                              text: parts.first,
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                            if (parts.length > 1) ...[
                              const TextSpan(text: ' – ', style: TextStyle(color: Colors.white38)),
                              TextSpan(
                                text: parts.last,
                                style: TextStyle(color: AppTheme.textSecondary),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            // Tip
            if (item.tip.isNotEmpty) ...[
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF59E0B).withOpacity(0.08),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFF59E0B).withOpacity(0.15)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('💡', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item.tip,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFFF59E0B),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // ═══════════════════ TAB 2: KELİME ANATOMİSİ ═══════════════════
  Widget _buildAnatomyTab() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      itemCount: wordBreakdowns.length,
      itemBuilder: (context, index) {
        final wb = wordBreakdowns[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GlassCard(
            padding: const EdgeInsets.all(20),
            borderColor: AppTheme.primaryIndigo.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        wb.word,
                        style: GoogleFonts.outfit(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '🔬',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  wb.turkishMeaning,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 20),
                // Word Parts Breakdown
                Row(
                  children: wb.parts.map((part) {
                    final color = part.type == 'Prefix'
                        ? const Color(0xFF818CF8)
                        : part.type == 'Suffix'
                            ? const Color(0xFFF472B6)
                            : AppTheme.accentEmerald;
                    return Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: color.withOpacity(0.3)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              part.text,
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: color,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              part.meaning,
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                color: AppTheme.textSecondary,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: color.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                part.type == 'Prefix' ? 'Ön Ek' : part.type == 'Suffix' ? 'Son Ek' : 'Kök',
                                style: GoogleFonts.inter(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ═══════════════════ TAB 3: MİNİ QUİZ ═══════════════════
  Widget _buildQuizTab() {
    if (_quizIndex >= _quizQuestions.length) {
      return _buildQuizResult();
    }

    final q = _quizQuestions[_quizIndex];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Progress
          Row(
            children: [
              Text(
                'Soru ${_quizIndex + 1} / ${_quizQuestions.length}',
                style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.textSecondary),
              ),
              const Spacer(),
              Text(
                '✅ $_quizCorrect doğru',
                style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.accentEmerald),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: (_quizIndex) / _quizQuestions.length,
              backgroundColor: Colors.white.withOpacity(0.05),
              valueColor: const AlwaysStoppedAnimation(AppTheme.primaryCyan),
              minHeight: 6,
            ),
          ),
          const SizedBox(height: 28),

          // Question
          GlassCard(
            padding: const EdgeInsets.all(24),
            borderColor: AppTheme.primaryIndigo.withOpacity(0.3),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    q.type == 'Prefix' ? 'Ön Ek' : q.type == 'Suffix' ? 'Son Ek' : 'Kök',
                    style: GoogleFonts.inter(fontSize: 12, color: AppTheme.textMuted),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  q.affix,
                  style: GoogleFonts.outfit(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: AppTheme.primaryCyan,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Bu ekin anlamı nedir?',
                  style: GoogleFonts.inter(fontSize: 15, color: AppTheme.textSecondary),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Options
          ...List.generate(q.options.length, (i) {
            final isSelected = _quizSelected == i;
            final isCorrect = i == q.correctIndex;
            Color bgColor = Colors.white.withOpacity(0.05);
            Color borderColor = Colors.transparent;

            if (_quizAnswered) {
              if (isCorrect) {
                bgColor = AppTheme.accentEmerald.withOpacity(0.15);
                borderColor = AppTheme.accentEmerald.withOpacity(0.5);
              } else if (isSelected && !isCorrect) {
                bgColor = AppTheme.accentRose.withOpacity(0.15);
                borderColor = AppTheme.accentRose.withOpacity(0.5);
              }
            } else if (isSelected) {
              bgColor = AppTheme.primaryCyan.withOpacity(0.15);
              borderColor = AppTheme.primaryCyan.withOpacity(0.5);
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: _quizAnswered
                    ? null
                    : () {
                        setState(() {
                          _quizSelected = i;
                          _quizAnswered = true;
                          _quizTotal++;
                          if (i == q.correctIndex) _quizCorrect++;
                          StudyStatsService.recordQuestion(
                            category: 'Kök-Ek Quiz',
                            isCorrect: i == q.correctIndex,
                          );
                        });
                      },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: borderColor),
                  ),
                  child: Text(
                    q.options[i],
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),

          if (_quizAnswered && q.tip.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFF59E0B).withOpacity(0.08),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFF59E0B).withOpacity(0.15)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('💡', style: TextStyle(fontSize: 14)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      q.tip,
                      style: GoogleFonts.inter(fontSize: 12, color: const Color(0xFFF59E0B), height: 1.4),
                    ),
                  ),
                ],
              ),
            ),

          const Spacer(),
          if (_quizAnswered)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _quizIndex++;
                    _quizAnswered = false;
                    _quizSelected = null;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryCyan,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                child: Text(
                  _quizIndex < _quizQuestions.length - 1 ? 'Sonraki Soru →' : 'Sonuçları Gör',
                  style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildQuizResult() {
    final pct = (_quizCorrect / _quizQuestions.length * 100).round();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pct >= 80 ? '🏆' : pct >= 50 ? '💪' : '📚',
              style: const TextStyle(fontSize: 64),
            ),
            const SizedBox(height: 16),
            Text(
              pct >= 80
                  ? 'Harika Şüko!'
                  : pct >= 50
                      ? 'İyi İş!'
                      : 'Daha Çalışmalısın',
              style: GoogleFonts.outfit(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              '${_quizQuestions.length} soruda $_quizCorrect doğru (%$pct)',
              style: GoogleFonts.inter(fontSize: 16, color: AppTheme.textSecondary),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _generateQuiz();
                });
              },
              icon: const Icon(Icons.refresh_rounded),
              label: Text('Tekrar Dene', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryCyan,
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuizQuestion {
  final String affix;
  final String type;
  final String correctMeaning;
  final List<String> options;
  final int correctIndex;
  final String tip;

  const _QuizQuestion({
    required this.affix,
    required this.type,
    required this.correctMeaning,
    required this.options,
    required this.correctIndex,
    required this.tip,
  });
}
