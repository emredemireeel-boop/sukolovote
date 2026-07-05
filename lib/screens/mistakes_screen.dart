import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/mistake_service.dart';
import '../widgets/glass_card.dart';

class MistakesScreen extends StatefulWidget {
  const MistakesScreen({super.key});

  @override
  State<MistakesScreen> createState() => _MistakesScreenState();
}

class _MistakesScreenState extends State<MistakesScreen> {
  List<MistakeItem> _mistakes = [];
  Map<String, int> _categoryCounts = {};
  String? _selectedCategory;
  bool _isRetryMode = false;
  int _retryIndex = 0;
  int? _retrySelected;
  bool _retryAnswered = false;
  int _retryCorrect = 0;
  List<MistakeItem> _retryQuestions = [];

  @override
  void initState() {
    super.initState();
    _loadMistakes();
  }

  Future<void> _loadMistakes() async {
    _mistakes = await MistakeService.getMistakes();
    _categoryCounts = await MistakeService.getCategoryCounts();
    setState(() {});
  }

  List<MistakeItem> get _filteredMistakes {
    if (_selectedCategory == null) return _mistakes;
    return _mistakes.where((m) => m.category == _selectedCategory).toList();
  }

  void _startRetryMode() {
    final questions =
        _filteredMistakes.where((m) => !m.resolved).toList()..shuffle();
    if (questions.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tekrar çözülecek soru yok!',
              style: GoogleFonts.inter(color: Colors.white)),
          backgroundColor: const Color(0xFF10B981),
        ),
      );
      return;
    }
    setState(() {
      _isRetryMode = true;
      _retryQuestions = questions;
      _retryIndex = 0;
      _retrySelected = null;
      _retryAnswered = false;
      _retryCorrect = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: _isRetryMode ? _buildRetryView() : _buildListView(),
        ),
      ),
    );
  }

  // ─── LİSTE GÖRÜNÜMÜ ─────────────────────────────────

  Widget _buildListView() {
    return Column(
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
                      'Hata Defteri',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      '${_mistakes.length} yanlış soru',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ],
                ),
              ),
              if (_filteredMistakes.any((m) => !m.resolved))
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF43F5E), Color(0xFFEF4444)],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: _startRetryMode,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.replay_rounded,
                                color: Colors.white, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              'Tekrar Çöz',
                              style: GoogleFonts.outfit(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),

        // Kategori filtreleri
        if (_categoryCounts.isNotEmpty)
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildFilterChip(null, 'Tümü', _mistakes.length),
                ..._categoryCounts.entries.map((e) =>
                    _buildFilterChip(e.key, e.key, e.value)),
              ],
            ),
          ),
        const SizedBox(height: 8),

        // Hata listesi
        Expanded(
          child: _filteredMistakes.isEmpty
              ? _buildEmptyState()
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _filteredMistakes.length,
                  itemBuilder: (context, index) {
                    return _buildMistakeCard(_filteredMistakes[index]);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildFilterChip(String? category, String label, int count) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () => setState(() => _selectedCategory = category),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xFFF43F5E).withOpacity(0.2)
                : Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isSelected
                  ? const Color(0xFFF43F5E).withOpacity(0.4)
                  : Colors.white.withOpacity(0.1),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: isSelected
                      ? const Color(0xFFF43F5E)
                      : AppTheme.textSecondary,
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFFF43F5E).withOpacity(0.3)
                      : Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '$count',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: isSelected
                        ? const Color(0xFFF43F5E)
                        : AppTheme.textMuted,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMistakeCard(MistakeItem mistake) {
    return Dismissible(
      key: Key(mistake.question),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete_rounded, color: Color(0xFFF43F5E)),
      ),
      onDismissed: (_) async {
        await MistakeService.deleteMistake(mistake.question);
        _loadMistakes();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GlassCard(
          padding: const EdgeInsets.all(14),
          borderColor: mistake.resolved
              ? const Color(0xFF10B981).withOpacity(0.3)
              : const Color(0xFFF43F5E).withOpacity(0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: mistake.resolved
                          ? const Color(0xFF10B981).withOpacity(0.12)
                          : const Color(0xFFF43F5E).withOpacity(0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      mistake.category,
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: mistake.resolved
                            ? const Color(0xFF10B981)
                            : const Color(0xFFF43F5E),
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (mistake.resolved)
                    const Icon(Icons.check_circle_rounded,
                        color: Color(0xFF10B981), size: 18)
                  else
                    Text(
                      '${mistake.retryCount}x denendi',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        color: AppTheme.textMuted,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                mistake.question.length > 120
                    ? '${mistake.question.substring(0, 120)}...'
                    : mistake.question,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: AppTheme.textPrimary,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.close_rounded,
                      color: Color(0xFFF43F5E), size: 14),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      mistake.options[mistake.selectedIndex],
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        color: const Color(0xFFF43F5E),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.check_rounded,
                      color: Color(0xFF10B981), size: 14),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      mistake.options[mistake.correctIndex],
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        color: const Color(0xFF10B981),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('🎉', style: TextStyle(fontSize: 48)),
          const SizedBox(height: 16),
          Text(
            'Henüz yanlış yok!',
            style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Quiz çözdükçe yanlışların burada görünecek',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  // ─── TEKRAR ÇÖZ MODU ────────────────────────────────

  Widget _buildRetryView() {
    if (_retryIndex >= _retryQuestions.length) {
      return _buildRetryResult();
    }

    final q = _retryQuestions[_retryIndex];

    return Column(
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              IconButton(
                onPressed: () => setState(() => _isRetryMode = false),
                icon: const Icon(Icons.close_rounded,
                    color: AppTheme.textPrimary, size: 24),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Tekrar Çöz',
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      'Soru ${_retryIndex + 1}/${_retryQuestions.length}',
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

        // Progress bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: (_retryIndex + 1) / _retryQuestions.length,
              backgroundColor: Colors.white.withOpacity(0.05),
              valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFFF43F5E)),
              minHeight: 4,
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Question
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF43F5E).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    q.category,
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFF43F5E),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  q.question,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: AppTheme.textPrimary,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 20),

                // Options
                ...List.generate(q.options.length, (i) {
                  final isSelected = _retrySelected == i;
                  final isCorrect = i == q.correctIndex;
                  Color bgColor = Colors.white.withOpacity(0.04);
                  Color borderColor = Colors.white.withOpacity(0.08);

                  if (_retryAnswered) {
                    if (isCorrect) {
                      bgColor =
                          const Color(0xFF10B981).withOpacity(0.12);
                      borderColor =
                          const Color(0xFF10B981).withOpacity(0.4);
                    } else if (isSelected && !isCorrect) {
                      bgColor =
                          const Color(0xFFF43F5E).withOpacity(0.12);
                      borderColor =
                          const Color(0xFFF43F5E).withOpacity(0.4);
                    }
                  } else if (isSelected) {
                    bgColor =
                        const Color(0xFF6366F1).withOpacity(0.12);
                    borderColor =
                        const Color(0xFF6366F1).withOpacity(0.4);
                  }

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: _retryAnswered
                          ? null
                          : () {
                              setState(() {
                                _retrySelected = i;
                                _retryAnswered = true;
                              });
                              if (i == q.correctIndex) {
                                _retryCorrect++;
                                MistakeService.markResolved(q.question);
                              }
                              MistakeService.incrementRetry(q.question);
                            },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: borderColor),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.06),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.12),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  String.fromCharCode(65 + i),
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.textSecondary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                q.options[i],
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: AppTheme.textPrimary,
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
                if (_retryAnswered) ...[
                  const SizedBox(height: 12),
                  GlassCard(
                    padding: const EdgeInsets.all(14),
                    borderColor: const Color(0xFF6366F1).withOpacity(0.3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '💡 Açıklama',
                          style: GoogleFonts.outfit(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF6366F1),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          q.explanation,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _retryIndex++;
                          _retrySelected = null;
                          _retryAnswered = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6366F1),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        _retryIndex + 1 >= _retryQuestions.length
                            ? 'Sonuçları Gör'
                            : 'Sonraki Soru',
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
      ],
    );
  }

  Widget _buildRetryResult() {
    final rate = _retryQuestions.isEmpty
        ? 0.0
        : _retryCorrect / _retryQuestions.length;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              rate >= 0.8 ? '🎉' : rate >= 0.5 ? '💪' : '📚',
              style: const TextStyle(fontSize: 56),
            ),
            const SizedBox(height: 20),
            Text(
              rate >= 0.8
                  ? 'Harika İlerleme!'
                  : rate >= 0.5
                      ? 'İyi Gidiyorsun!'
                      : 'Biraz Daha Çalışmalısın',
              style: GoogleFonts.outfit(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '$_retryCorrect / ${_retryQuestions.length} doğru',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: rate >= 0.7
                    ? const Color(0xFF10B981)
                    : const Color(0xFFF59E0B),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${(rate * 100).toStringAsFixed(0)}% başarı oranı',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isRetryMode = false;
                  });
                  _loadMistakes();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6366F1),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Hata Defterine Dön',
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
