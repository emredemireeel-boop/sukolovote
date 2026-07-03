import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/questions_data.dart';
import '../widgets/glass_card.dart';
import '../widgets/tappable_passage_text.dart';

class QuestionTypeDetailScreen extends StatefulWidget {
  final QuestionType questionType;
  final LinearGradient gradient;

  const QuestionTypeDetailScreen({
    super.key,
    required this.questionType,
    required this.gradient,
  });

  @override
  State<QuestionTypeDetailScreen> createState() => _QuestionTypeDetailScreenState();
}

class _QuestionTypeDetailScreenState extends State<QuestionTypeDetailScreen> {
  // Track which examples have stepByStep expanded
  final Set<int> _expandedSteps = {};

  QuestionType get qt => widget.questionType;
  LinearGradient get gradient => widget.gradient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
              // App Bar
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
                        qt.title,
                        style: GoogleFonts.outfit(fontSize: 20, fontWeight: FontWeight.w600, color: AppTheme.textPrimary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Card
                      _buildHeaderCard(),
                      const SizedBox(height: 20),

                      // Description
                      _buildSectionTitle('📋 Açıklama'),
                      const SizedBox(height: 10),
                      Text(qt.description, style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textSecondary, height: 1.7)),

                      // Detailed Explanation (NEW)
                      if (qt.detailedExplanation.isNotEmpty) ...[
                        const SizedBox(height: 20),
                        _buildSectionTitle('📖 Detaylı Açıklama'),
                        const SizedBox(height: 12),
                        _buildDetailedExplanation(),
                      ],

                      const SizedBox(height: 24),

                      // Strategies
                      _buildSectionTitle('🎯 Çözüm Stratejileri'),
                      const SizedBox(height: 12),
                      ...qt.strategies.asMap().entries.map(
                        (entry) => _buildStrategyItem(entry.key + 1, entry.value),
                      ),

                      // Common Mistakes (NEW)
                      if (qt.commonMistakes.isNotEmpty) ...[
                        const SizedBox(height: 24),
                        _buildSectionTitle('⚠️ Sık Yapılan Hatalar'),
                        const SizedBox(height: 12),
                        ...qt.commonMistakes.map((m) => _buildMistakeItem(m)),
                      ],

                      // Key Phrases (NEW)
                      if (qt.keyPhrases.isNotEmpty) ...[
                        const SizedBox(height: 24),
                        _buildSectionTitle('🔑 Anahtar Kalıplar'),
                        const SizedBox(height: 12),
                        _buildKeyPhrasesGrid(),
                      ],

                      const SizedBox(height: 24),

                      // Tips
                      _buildSectionTitle('💡 İpuçları'),
                      const SizedBox(height: 12),
                      ...qt.tips.map((tip) => _buildTipItem(tip)),
                      const SizedBox(height: 24),

                      // Example Questions
                      if (qt.examples.isNotEmpty) ...[
                        _buildSectionTitle('📝 Örnek Sorular (${qt.examples.length})'),
                        const SizedBox(height: 12),
                        ...qt.examples.asMap().entries.map(
                          (entry) => _buildExampleCard(entry.key + 1, entry.value, entry.key),
                        ),
                      ],
                      const SizedBox(height: 30),
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

  Widget _buildHeaderCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradient.colors.first.withOpacity(0.15), gradient.colors.last.withOpacity(0.05)],
          begin: Alignment.topLeft, end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: gradient.colors.first.withOpacity(0.2), width: 1),
      ),
      child: Row(
        children: [
          Text(qt.icon, style: const TextStyle(fontSize: 40)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(qt.title, style: GoogleFonts.outfit(fontSize: 22, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                const SizedBox(height: 4),
                Text(qt.subtitle, style: GoogleFonts.inter(fontSize: 13, color: gradient.colors.first, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(12)),
            child: Text('${qt.questionCount} Soru', style: GoogleFonts.outfit(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title, style: GoogleFonts.outfit(fontSize: 18, fontWeight: FontWeight.w600, color: AppTheme.textPrimary));
  }

  // NEW: Detailed explanation with formatted sections
  Widget _buildDetailedExplanation() {
    final lines = qt.detailedExplanation.split('\n');
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: gradient.colors.first.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: gradient.colors.first.withOpacity(0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: lines.map((line) {
          if (line.trim().isEmpty) return const SizedBox(height: 10);
          if (line.startsWith('📌') || line.startsWith('⚡')) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 4),
              child: Text(line, style: GoogleFonts.outfit(fontSize: 15, fontWeight: FontWeight.w700, color: AppTheme.textPrimary, height: 1.6)),
            );
          }
          if (line.startsWith('   •')) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 2),
              child: Text(line, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary, height: 1.6)),
            );
          }
          return Text(line, style: GoogleFonts.inter(fontSize: 13.5, color: AppTheme.textSecondary, height: 1.7));
        }).toList(),
      ),
    );
  }

  Widget _buildStrategyItem(int number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28, height: 28,
            decoration: BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(8)),
            child: Center(child: Text('$number', style: GoogleFonts.outfit(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white))),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(text, style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textSecondary, height: 1.5)),
            ),
          ),
        ],
      ),
    );
  }

  // NEW: Common mistakes
  Widget _buildMistakeItem(String mistake) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppTheme.accentRose.withOpacity(0.06),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.accentRose.withOpacity(0.15), width: 1),
      ),
      child: Text(mistake, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary, height: 1.5)),
    );
  }

  // NEW: Key phrases grid
  Widget _buildKeyPhrasesGrid() {
    return Column(
      children: qt.keyPhrases.map((phrase) {
        final parts = phrase.split(' — ');
        final eng = parts[0];
        final tr = parts.length > 1 ? parts[1] : '';
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: AppTheme.primaryCyan.withOpacity(0.06),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppTheme.primaryCyan.withOpacity(0.12)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(eng, style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600, color: AppTheme.primaryCyan)),
              ),
              if (tr.isNotEmpty) ...[
                const SizedBox(width: 8),
                Icon(Icons.arrow_forward_rounded, size: 14, color: AppTheme.textMuted),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(tr, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary)),
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTipItem(String tip) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppTheme.accentAmber.withOpacity(0.06),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.accentAmber.withOpacity(0.15), width: 1),
      ),
      child: Text(tip, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary, height: 1.5)),
    );
  }

  Widget _buildExampleCard(int number, ExampleQuestion example, int index) {
    final isStepExpanded = _expandedSteps.contains(index);
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: AppTheme.glassDecoration(opacity: 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(8)),
                child: Text('Soru $number', style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
              ),
              const Spacer(),
              if (example.stepByStep != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppTheme.accentEmerald.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text('Adım adım çözüm ↓', style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w500, color: AppTheme.accentEmerald)),
                ),
            ],
          ),
          const SizedBox(height: 14),

          // Passage
          if (example.passage != null) ...[
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.03),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white.withOpacity(0.06)),
              ),
              child: TappablePassageText(
                passage: example.passage!,
                vocabMap: const {},
                fontSize: 13,
                lineHeight: 1.6,
                textColor: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 14),
          ],

          // Question
          TappablePassageText(
            passage: example.question,
            vocabMap: const {},
            fontSize: 14,
            lineHeight: 1.6,
            textColor: AppTheme.textPrimary,
          ),
          const SizedBox(height: 14),

          // Options
          ...example.options.asMap().entries.map((entry) {
            final isCorrect = entry.key == example.correctIndex;
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: isCorrect ? AppTheme.accentEmerald.withOpacity(0.1) : Colors.white.withOpacity(0.03),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isCorrect ? AppTheme.accentEmerald.withOpacity(0.3) : Colors.white.withOpacity(0.06),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  if (isCorrect) const Icon(Icons.check_circle_rounded, size: 18, color: AppTheme.accentEmerald),
                  if (isCorrect) const SizedBox(width: 8),
                  Expanded(
                    child: TappablePassageText(
                      passage: entry.value,
                      vocabMap: const {},
                      fontSize: 13,
                      lineHeight: 1.4,
                      textColor: isCorrect ? AppTheme.accentEmerald : AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(height: 14),

          // Explanation
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppTheme.primaryIndigo.withOpacity(0.08),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppTheme.primaryIndigo.withOpacity(0.15), width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Icon(Icons.lightbulb_rounded, size: 16, color: AppTheme.primaryIndigo),
                  const SizedBox(width: 6),
                  Text('Açıklama', style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600, color: AppTheme.primaryIndigo)),
                ]),
                const SizedBox(height: 8),
                Text(example.explanation, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary, height: 1.6)),
              ],
            ),
          ),

          // Step-by-Step Solution (NEW)
          if (example.stepByStep != null) ...[
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (isStepExpanded) {
                    _expandedSteps.remove(index);
                  } else {
                    _expandedSteps.add(index);
                  }
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                decoration: BoxDecoration(
                  color: AppTheme.accentEmerald.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppTheme.accentEmerald.withOpacity(0.15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const Icon(Icons.route_rounded, size: 16, color: AppTheme.accentEmerald),
                      const SizedBox(width: 6),
                      Text('Adım Adım Çözüm', style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600, color: AppTheme.accentEmerald)),
                      const Spacer(),
                      AnimatedRotation(
                        turns: isStepExpanded ? 0.5 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: const Icon(Icons.expand_more_rounded, size: 20, color: AppTheme.accentEmerald),
                      ),
                    ]),
                    if (isStepExpanded) ...[
                      const SizedBox(height: 12),
                      ...example.stepByStep!.split('\n').map((line) {
                        if (line.trim().isEmpty) return const SizedBox(height: 6);
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(line, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textSecondary, height: 1.6)),
                        );
                      }),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
