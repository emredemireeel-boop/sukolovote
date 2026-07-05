import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/glass_card.dart';

class ScoreCalculatorScreen extends StatefulWidget {
  const ScoreCalculatorScreen({super.key});

  @override
  State<ScoreCalculatorScreen> createState() => _ScoreCalculatorScreenState();
}

class _ScoreCalculatorScreenState extends State<ScoreCalculatorScreen> {
  double _targetScore = 60.0;
  int _correctAnswers = 48;
  int _wrongAnswers = 32;

  double get _calculatedScore => _correctAnswers * 1.25;

  void _updateFromTarget(double target) {
    setState(() {
      _targetScore = target.clamp(0, 100);
      _correctAnswers = (_targetScore / 1.25).ceil().clamp(0, 80);
      _wrongAnswers = 80 - _correctAnswers;
    });
  }

  void _updateFromCorrect(int correct) {
    setState(() {
      _correctAnswers = correct.clamp(0, 80);
      _wrongAnswers = 80 - _correctAnswers;
      _targetScore = _correctAnswers * 1.25;
    });
  }

  void _updateFromWrong(int wrong) {
    setState(() {
      _wrongAnswers = wrong.clamp(0, 80);
      _correctAnswers = 80 - _wrongAnswers;
      _targetScore = _correctAnswers * 1.25;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'YÖKDİL Puan Hesaplama',
          style: GoogleFonts.outfit(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              GlassCard(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      _buildControlRow(
                        title: 'HEDEF PUANINIZ',
                        icon: Icons.star,
                        iconColor: Colors.amber,
                        value: _targetScore.toStringAsFixed(2).replaceAll('.00', ''),
                        onDecrement: () => _updateFromTarget(_targetScore - 1.25),
                        onIncrement: () => _updateFromTarget(_targetScore + 1.25),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Divider(color: Colors.white12, height: 1),
                      ),
                      _buildControlRow(
                        title: 'DOĞRU CEVAP',
                        icon: Icons.circle,
                        iconColor: Colors.greenAccent,
                        value: _correctAnswers.toString(),
                        onDecrement: () => _updateFromCorrect(_correctAnswers - 1),
                        onIncrement: () => _updateFromCorrect(_correctAnswers + 1),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Divider(color: Colors.white12, height: 1),
                      ),
                      _buildControlRow(
                        title: 'YANLIŞ CEVAP',
                        icon: Icons.circle,
                        iconColor: Colors.redAccent,
                        value: _wrongAnswers.toString(),
                        onDecrement: () => _updateFromWrong(_wrongAnswers - 1),
                        onIncrement: () => _updateFromWrong(_wrongAnswers + 1),
                      ),
                      const SizedBox(height: 32),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF8B5CF6), Color(0xFF6D28D9)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF8B5CF6).withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'PUAN HESAPLA',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              GlassCard(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SINAVDAN ALDIĞINIZ PUAN:',
                            style: GoogleFonts.inter(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            _calculatedScore.toStringAsFixed(2).replaceAll('.00', ''),
                            style: GoogleFonts.outfit(
                              color: const Color(0xFF34D399),
                              fontWeight: FontWeight.w800,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Divider(color: Colors.white12, height: 1),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF34D399).withOpacity(0.15),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.info_outline, color: Color(0xFF34D399), size: 20),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 14, height: 1.5),
                                children: [
                                  const TextSpan(text: "YÖKDİL'de yaptığınız "),
                                  TextSpan(text: "$_correctAnswers doğru", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                  const TextSpan(text: " sayısı ile "),
                                  TextSpan(text: "${_calculatedScore.toStringAsFixed(2).replaceAll('.00', '')} puan", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                  const TextSpan(text: " alabilirsiniz. "),
                                  const TextSpan(text: "4 yanlış 1 doğruyu götürmediği için netleriniz yalnızca doğru sayınıza göre hesaplanır."),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildControlRow({
    required String title,
    required IconData icon,
    required Color iconColor,
    required String value,
    required VoidCallback onDecrement,
    required VoidCallback onIncrement,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor, size: 14),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    color: AppTheme.textSecondary,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: GoogleFonts.outfit(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ],
        ),
        Row(
          children: [
            _buildRoundBtn(Icons.remove, onDecrement),
            const SizedBox(width: 12),
            _buildRoundBtn(Icons.add, onIncrement),
          ],
        ),
      ],
    );
  }

  Widget _buildRoundBtn(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withOpacity(0.1)),
        ),
        child: Icon(icon, color: Colors.white70, size: 20),
      ),
    );
  }
}
