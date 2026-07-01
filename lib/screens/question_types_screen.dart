import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/questions_data.dart';
import '../widgets/glass_card.dart';
import 'question_type_detail_screen.dart';

class QuestionTypesScreen extends StatelessWidget {
  const QuestionTypesScreen({super.key});

  static const List<LinearGradient> _gradients = [
    LinearGradient(colors: [Color(0xFF0891B2), Color(0xFF06B6D4)]),
    LinearGradient(colors: [Color(0xFF0F766E), Color(0xFF14B8A6)]),
    LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF818CF8)]),
    LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFFBBF24)]),
    LinearGradient(colors: [Color(0xFFF43F5E), Color(0xFFFB7185)]),
    LinearGradient(colors: [Color(0xFF10B981), Color(0xFF34D399)]),
    LinearGradient(colors: [Color(0xFF8B5CF6), Color(0xFFA78BFA)]),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Soru Tipleri',
                  style: GoogleFonts.outfit(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'YÖKDİL\'deki 7 farklı soru tipini öğren',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: questionTypes.length,
              itemBuilder: (context, index) {
                final qt = questionTypes[index];
                final gradient = _gradients[index % _gradients.length];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: _buildQuestionTypeCard(context, qt, gradient, index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionTypeCard(
    BuildContext context,
    QuestionType qt,
    LinearGradient gradient,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => QuestionTypeDetailScreen(
              questionType: qt,
              gradient: gradient,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: AppTheme.glassDecoration(opacity: 0.06),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: gradient.colors.first.withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  qt.icon,
                  style: const TextStyle(fontSize: 26),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    qt.title,
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    qt.subtitle,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppTheme.textMuted,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: gradient.colors.first.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '${qt.questionCount}',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: gradient.colors.first,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: AppTheme.textMuted,
            ),
          ],
        ),
      ),
    );
  }
}
