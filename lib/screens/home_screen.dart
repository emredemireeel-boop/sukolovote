import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/countdown_timer.dart';
import '../widgets/glass_card.dart';
import 'question_types_screen.dart';
import 'health_terms_screen.dart';
import 'quiz_screen.dart';
import 'study_plan_screen.dart';
import 'grammar_guide_screen.dart';
import 'connectors_screen.dart';
import 'vocab_pool_screen.dart';
import 'articles_screen.dart';
import 'mock_exams_screen.dart';
import 'custom_words_screen.dart';
import 'reading_passages_screen.dart';
import 'cikmis_fiiller_screen.dart';
import '../data/articles_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  final List<String> motivationQuotes = [
    '"Başarı, hazırlığın fırsatla buluştuğu andır." – Seneca',
    '"Her gün küçük bir adım, büyük bir fark yaratır."',
    '"Disiplin, motivasyon bittiğinde devam etmektir."',
    '"80 sorudan her biri seni hedefe bir adım daha yaklaştırır."',
    '"Bilgi güçtür - özellikle sağlık bilimi alanında!"',
    '"Bugün yapacağın çalışma, yarın seni kurtaracak."',
    '"YÖKDİL bir maraton, sprint değil. Sabırla devam et!"',
  ];

  @override
  void initState() {
    super.initState();
    _checkAbsence();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeIn),
    );
    _fadeController.forward();
  }

  Future<void> _checkAbsence() async {
    final prefs = await SharedPreferences.getInstance();
    final lastOpenStr = prefs.getString('last_open_date');
    final now = DateTime.now();
    
    if (lastOpenStr != null) {
      final lastOpen = DateTime.parse(lastOpenStr);
      if (now.difference(lastOpen).inDays >= 2) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: AppTheme.darkCard,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              title: const Text('🚨 Hey!', style: TextStyle(color: Colors.white, fontSize: 24)),
              content: const Text(
                'len 2 gündür açmıon uygulamayı töt buraya gel!',
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text('Geldim Geldim 🥺', style: TextStyle(color: AppTheme.primaryCyan, fontSize: 16)),
                )
              ],
            ),
          );
        });
      }
    }
    await prefs.setString('last_open_date', now.toIso8601String());
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  String get todayMotivation {
    final dayOfYear = DateTime.now().difference(DateTime(2026, 1, 1)).inDays;
    return motivationQuotes[dayOfYear % motivationQuotes.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: _currentIndex == 0 ? _buildHomeTab() :
               _currentIndex == 1 ? const QuestionTypesScreen() :
               _currentIndex == 2 ? const QuizScreen() :
               _currentIndex == 3 ? const HealthTermsScreen() :
               const StudyPlanScreen(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppTheme.darkSurface.withOpacity(0.95),
          border: Border(
            top: BorderSide(
              color: Colors.white.withOpacity(0.05),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: AppTheme.primaryCyan,
          unselectedItemColor: AppTheme.textMuted,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined),
              activeIcon: Icon(Icons.quiz_rounded),
              label: 'Soru Tipleri',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_rounded),
              activeIcon: Icon(Icons.play_circle_rounded),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information_outlined),
              activeIcon: Icon(Icons.medical_information_rounded),
              label: 'Terimler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              activeIcon: Icon(Icons.calendar_month_rounded),
              label: 'Plan',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeTab() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF22D3EE),
                            Color(0xFF818CF8),
                            Color(0xFFF472B6),
                          ],
                        ).createShader(bounds),
                        child: RichText(
                          text: TextSpan(
                            text: 'YÖKDİL ',
                            style: GoogleFonts.outfit(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                            children: [
                              const TextSpan(text: '♥️ '),
                              TextSpan(
                                text: 'Şükran',
                                style: GoogleFonts.outfit(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Çalışma Rehberi 2026',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: AppTheme.primaryCyan,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      final messages = [
                        'Kız Şüko, alev alev yanıyorsun! 🔥 Doktora seni bekler!',
                        'Tıp çalışmıyor doktoraya çalışıyor! 👩‍⚕️',
                        'YÖKDİL\'i parçalamaya hazır mıyız Şüko? 🚀',
                        'Doktora yollarında sana başarılar! 🌟',
                        'Hadi biraz kelime çalışalım, netler uçsun! 📈'
                      ];
                      final msg = messages[DateTime.now().millisecond % messages.length];
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            msg,
                            style: GoogleFonts.inter(fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                          backgroundColor: Colors.red.shade700,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                          duration: const Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.shade700,
                        gradient: RadialGradient(
                          colors: [Colors.orange.shade300, Colors.red.shade900],
                          center: Alignment.topLeft,
                          radius: 1.2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent.withOpacity(0.6),
                            blurRadius: 15,
                            spreadRadius: 2,
                          ),
                          BoxShadow(
                            color: Colors.orangeAccent.withOpacity(0.3),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Ş',
                          style: GoogleFonts.outfit(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            shadows: const [
                              Shadow(color: Colors.black45, blurRadius: 4, offset: Offset(2, 2)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Countdown Timer
              const CountdownTimer(),
              const SizedBox(height: 20),

              // Exam Info Cards
              _buildExamInfoCards(),
              const SizedBox(height: 24),

              // Quick Access
              Text(
                'Hızlı Erişim',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 14),
              _buildQuickAccessGrid(),
              const SizedBox(height: 24),

              // Havuzlar (Bağlaç & Kelime)
              Text(
                'Çalışma Havuzları',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 14),
              _buildPoolCards(),
              const SizedBox(height: 24),

              // Exam Format Summary
              _buildExamFormatCard(),
              const SizedBox(height: 24),

              // Motivation
              _buildMotivationCard(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamInfoCards() {
    return Row(
      children: [
        Expanded(
          child: GlassCard(
            padding: const EdgeInsets.all(14),
            borderColor: AppTheme.accentEmerald.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.event_available, size: 16, color: AppTheme.accentEmerald),
                    const SizedBox(width: 6),
                    Text(
                      'Başvuru',
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.accentEmerald,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '16-24 Haz',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                Text(
                  'Geç: 30 Haz',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.accentAmber,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GlassCard(
            padding: const EdgeInsets.all(14),
            borderColor: AppTheme.primaryIndigo.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.event_note, size: 16, color: AppTheme.primaryIndigo),
                    const SizedBox(width: 6),
                    Text(
                      'Sınav',
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryIndigo,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '09 Ağu 2026',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                Text(
                  'Cumartesi 10:15',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.textMuted,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GlassCard(
            padding: const EdgeInsets.all(14),
            borderColor: AppTheme.primaryCyan.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.assessment, size: 16, color: AppTheme.primaryCyan),
                    const SizedBox(width: 6),
                    Text(
                      'Sonuç',
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryCyan,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '26 Ağu',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                Text(
                  '2026',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.textMuted,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickAccessGrid() {
    final items = [
      _QuickAccessItem(
        icon: Icons.quiz_rounded,
        label: 'Soru\nTipleri',
        gradient: AppTheme.primaryGradient,
        onTap: () => setState(() => _currentIndex = 1),
      ),
      _QuickAccessItem(
        icon: Icons.play_circle_rounded,
        label: 'Quiz\nÇöz',
        gradient: AppTheme.accentGradient,
        onTap: () => setState(() => _currentIndex = 2),
      ),
      _QuickAccessItem(
        icon: Icons.medical_information_rounded,
        label: 'Sağlık\nTerimleri',
        gradient: AppTheme.emeraldGradient,
        onTap: () => setState(() => _currentIndex = 3),
      ),
      _QuickAccessItem(
        icon: Icons.menu_book_rounded,
        label: 'Gramer\nRehberi',
        gradient: AppTheme.warmGradient,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const GrammarGuideScreen()),
          );
        },
      ),
    ];

    return Row(
      children: items.map((item) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: item.onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  gradient: item.gradient,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: item.gradient.colors.first.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(item.icon, color: Colors.white, size: 28),
                    const SizedBox(height: 8),
                    Text(
                      item.label,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildExamFormatCard() {
    return GlassCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('📊', style: TextStyle(fontSize: 20)),
              const SizedBox(width: 10),
              Text(
                'Sınav Formatı',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.primaryCyan.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '80 Soru',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primaryCyan,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildFormatRow('Gramer & Kelime', 20, AppTheme.primaryCyan),
          _buildFormatRow('Cloze Test', 10, AppTheme.primaryTeal),
          _buildFormatRow('Cümle Tamamlama', 11, AppTheme.primaryIndigo),
          _buildFormatRow('Çeviri (TR↔EN)', 12, AppTheme.accentAmber),
          _buildFormatRow('Anlam Bütünlüğü', 6, AppTheme.accentRose),
          _buildFormatRow('Paragraf Tamamlama', 6, AppTheme.accentEmerald),
          _buildFormatRow('Okuma Parçası', 15, const Color(0xFF8B5CF6)),
        ],
      ),
    );
  }

  Widget _buildFormatRow(String title, int count, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 24,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            width: 36,
            height: 24,
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                '$count',
                style: GoogleFonts.outfit(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: count / 20,
                backgroundColor: Colors.white.withOpacity(0.05),
                valueColor: AlwaysStoppedAnimation<Color>(color),
                minHeight: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPoolCards() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ConnectorsScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFEC4899).withOpacity(0.12),
                        const Color(0xFFF43F5E).withOpacity(0.06),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFEC4899).withOpacity(0.2),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEC4899).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Center(
                          child: Text('🔗', style: TextStyle(fontSize: 24)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Bağlaç Havuzu',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '9 Kategori • 70+ Bağlaç',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: const Color(0xFFEC4899),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const VocabPoolScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF8B5CF6).withOpacity(0.12),
                        const Color(0xFF6366F1).withOpacity(0.06),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFF8B5CF6).withOpacity(0.2),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B5CF6).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Center(
                          child: Text('📚', style: TextStyle(fontSize: 24)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Kelime Havuzu',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '7 Kategori • 90+ Kelime',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: const Color(0xFF8B5CF6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (_) => const VocabPoolScreen(initialCategory: 'Oxford B1 Seviyesi')));
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF3B82F6).withOpacity(0.12),
                  const Color(0xFF2563EB).withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFF3B82F6).withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3B82F6).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text('📘', style: TextStyle(fontSize: 24)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oxford 3000 Kelimeleri',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Özel Seçilmiş B1 & B2 Seviye YÖKDİL Kelimeleri',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFF3B82F6),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFF3B82F6)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ArticlesScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF10B981).withOpacity(0.12),
                  const Color(0xFF059669).withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFF10B981).withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text('📄', style: TextStyle(fontSize: 24)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Makalelerle YÖKDİL',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${articles.length} akademik makale • kelime + soru',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFF10B981),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFF10B981)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MockExamsScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF6366F1).withOpacity(0.15),
                  const Color(0xFF06B6D4).withOpacity(0.07),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFF6366F1).withOpacity(0.25),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6366F1).withOpacity(0.15),
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
                        'Deneme ve Çıkmış Sınavlar',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'İşaretlemeli interaktif deneme sınavı',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFF818CF8),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFF818CF8)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (_) => const CustomWordsScreen()));
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFEC4899).withOpacity(0.12),
                  const Color(0xFFF472B6).withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFFEC4899).withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEC4899).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text('✍️', style: TextStyle(fontSize: 24)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kelime Listem',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Kendi kelimelerini ekle • Kart + Quiz',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFFF472B6),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFFF472B6)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (_) => const ReadingPassagesScreen()));
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFF59E0B).withOpacity(0.12),
                  const Color(0xFFEAB308).withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFFF59E0B).withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF59E0B).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text('📖', style: TextStyle(fontSize: 24)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Okuma Parçaları',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '20 Parça • Kelimeler • Sorular • İnteraktif Quiz',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFFF59E0B),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFFF59E0B)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CikmisFiillerScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF8B5CF6).withOpacity(0.12),
                  const Color(0xFF7C3AED).withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFF8B5CF6).withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF8B5CF6).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text('🏃', style: TextStyle(fontSize: 24)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Çıkmış Fiiller',
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Sınavlarda sık çıkan fiiller listesi',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: const Color(0xFF8B5CF6),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFF8B5CF6)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionDistributionVisual() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1F38).withOpacity(0.8),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Column(
        children: [
          Text(
            'YÖKDİL SORU DAĞILIMI',
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppTheme.textPrimary,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          // Visual bubble distribution
          SizedBox(
            height: 260,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Center - Paragraf (biggest)
                _buildDistBubble(
                  '15', 'Paragraf', 90,
                  const Color(0xFF9333EA),
                  Alignment.center,
                ),
                // Left - İlk 20
                Positioned(
                  left: 0, top: 30,
                  child: _buildDistBubbleComplex(
                    '20', 'İlk 20\nSoru', 76,
                    const Color(0xFFF43F5E),
                    subtitle: 'vocabulary, preposition,\ntense, connectors',
                  ),
                ),
                // Top right - Cümle Tamamlama
                Positioned(
                  right: 10, top: 0,
                  child: _buildDistBubble(
                    '11', 'Cümle\nTamamlama', 60,
                    const Color(0xFF9333EA),
                    Alignment.center,
                  ),
                ),
                // Top left - İlgisiz Cümle
                Positioned(
                  left: 80, top: 0,
                  child: _buildDistBubble(
                    '6', 'İlgisiz\nCümle', 56,
                    const Color(0xFF9333EA),
                    Alignment.center,
                  ),
                ),
                // Bottom left - Çeviri
                Positioned(
                  left: 20, bottom: 10,
                  child: _buildDistBubble(
                    '12', 'Çeviri\nSorusu', 66,
                    const Color(0xFFEC4899),
                    Alignment.center,
                  ),
                ),
                // Bottom center - Paragraf Tamamlama
                Positioned(
                  bottom: 0, left: 120,
                  child: _buildDistBubble(
                    '6', 'Paragraf\nTamamlama', 54,
                    const Color(0xFF9333EA),
                    Alignment.center,
                  ),
                ),
                // Right - Cloze Test
                Positioned(
                  right: 0, bottom: 30,
                  child: _buildDistBubble(
                    '10', 'Cloze\nTest', 62,
                    const Color(0xFF7C3AED),
                    Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF9333EA).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFF9333EA).withOpacity(0.2),
              ),
            ),
            child: Text(
              '80 Soru • 180 Dakika • 7 Farklı Soru Tipi',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF9333EA),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDistBubble(
    String count, String label, double size, Color color, Alignment alignment,
  ) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.85),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: GoogleFonts.outfit(
              fontSize: size * 0.28,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: math.max(size * 0.11, 8),
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.9),
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDistBubbleComplex(
    String count, String label, double size, Color color, {String? subtitle}
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [color, color.withOpacity(0.7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count,
                style: GoogleFonts.outfit(
                  fontSize: size * 0.26,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: size * 0.12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.9),
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.inter(
              fontSize: 8,
              color: AppTheme.textMuted,
              height: 1.3,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildMotivationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.primaryIndigo.withOpacity(0.15),
            AppTheme.primaryCyan.withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryIndigo.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          const Text('💪', style: TextStyle(fontSize: 28)),
          const SizedBox(height: 10),
          Text(
            todayMotivation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: AppTheme.textSecondary,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickAccessItem {
  final IconData icon;
  final String label;
  final LinearGradient gradient;
  final VoidCallback onTap;

  const _QuickAccessItem({
    required this.icon,
    required this.label,
    required this.gradient,
    required this.onTap,
  });
}
