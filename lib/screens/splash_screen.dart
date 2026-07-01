import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _mainController;
  late AnimationController _heartBeatController;
  late AnimationController _floatingController;
  late AnimationController _sparkleController;
  late AnimationController _nameController;
  late AnimationController _exitController;

  late Animation<double> _logoScale;
  late Animation<double> _logoOpacity;
  late Animation<double> _heartScale;
  late Animation<double> _nameOpacity;
  late Animation<double> _nameSlide;
  late Animation<double> _subtitleOpacity;
  late Animation<double> _glowOpacity;
  late Animation<double> _exitAnimation;

  final List<_FloatingHeart> _hearts = [];
  final List<_FloatingText> _floatingTexts = [];
  final List<_Sparkle> _sparkles = [];
  final math.Random _random = math.Random();

  @override
  void initState() {
    super.initState();

    // Ana animasyon kontrolcusu (4.5 saniye)
    _mainController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4500),
    );

    // Kalp atisi efekti
    _heartBeatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // Floating elementler
    _floatingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );

    // Sparkle efekti
    _sparkleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    // Sukran ismi animasyonu
    _nameController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Cikis animasyonu
    _exitController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // Logo animasyonlari
    _logoScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.0, 0.35, curve: Curves.elasticOut),
      ),
    );

    _logoOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.0, 0.2, curve: Curves.easeIn),
      ),
    );

    // Kalp scale
    _heartScale = Tween<double>(begin: 0.8, end: 1.15).animate(
      CurvedAnimation(
        parent: _heartBeatController,
        curve: Curves.easeInOut,
      ),
    );

    // Sukran ismi
    _nameOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _nameController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    _nameSlide = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _nameController,
        curve: const Interval(0.0, 0.7, curve: Curves.easeOutCubic),
      ),
    );

    // Alt yazi
    _subtitleOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.55, 0.75, curve: Curves.easeIn),
      ),
    );

    // Glow efekti
    _glowOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _mainController,
        curve: const Interval(0.2, 0.5, curve: Curves.easeIn),
      ),
    );

    // Cikis
    _exitAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _exitController,
        curve: Curves.easeInCubic,
      ),
    );

    _generateHearts();
    _generateFloatingTexts();
    _generateSparkles();
    _startAnimations();
  }

  void _generateHearts() {
    for (int i = 0; i < 25; i++) {
      _hearts.add(_FloatingHeart(
        x: _random.nextDouble(),
        y: _random.nextDouble() * 0.3 + 0.85,
        size: _random.nextDouble() * 24 + 12,
        speed: _random.nextDouble() * 0.4 + 0.2,
        delay: _random.nextDouble() * 2.0,
        wobble: _random.nextDouble() * 30 - 15,
        opacity: _random.nextDouble() * 0.6 + 0.4,
        color: [
          const Color(0xFFFF6B9D),
          const Color(0xFFFF4081),
          const Color(0xFFE91E63),
          const Color(0xFFF06292),
          const Color(0xFFFF80AB),
          const Color(0xFFFF1744),
          const Color(0xFFFF5252),
        ][_random.nextInt(7)],
      ));
    }
  }

  void _generateFloatingTexts() {
    for (int i = 0; i < 12; i++) {
      _floatingTexts.add(_FloatingText(
        x: _random.nextDouble(),
        y: _random.nextDouble() * 0.4 + 0.7,
        size: _random.nextDouble() * 10 + 10,
        speed: _random.nextDouble() * 0.3 + 0.15,
        delay: _random.nextDouble() * 3.0,
        rotation: _random.nextDouble() * 0.5 - 0.25,
        opacity: _random.nextDouble() * 0.4 + 0.2,
      ));
    }
  }

  void _generateSparkles() {
    for (int i = 0; i < 30; i++) {
      _sparkles.add(_Sparkle(
        x: _random.nextDouble(),
        y: _random.nextDouble(),
        size: _random.nextDouble() * 4 + 1,
        speed: _random.nextDouble() * 2 + 1,
        delay: _random.nextDouble() * 3,
        opacity: _random.nextDouble() * 0.8 + 0.2,
      ));
    }
  }

  void _startAnimations() async {
    _mainController.forward();
    _floatingController.repeat();
    _sparkleController.repeat();

    await Future.delayed(const Duration(milliseconds: 800));
    _heartBeatController.repeat(reverse: true);

    await Future.delayed(const Duration(milliseconds: 600));
    _nameController.forward();

    await Future.delayed(const Duration(milliseconds: 3000));
    _exitController.forward();

    await Future.delayed(const Duration(milliseconds: 800));
    if (mounted) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    }
  }

  @override
  void dispose() {
    _mainController.dispose();
    _heartBeatController.dispose();
    _floatingController.dispose();
    _sparkleController.dispose();
    _nameController.dispose();
    _exitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: Listenable.merge([
          _mainController,
          _heartBeatController,
          _floatingController,
          _sparkleController,
          _nameController,
          _exitController,
        ]),
        builder: (context, child) {
          final exitVal = _exitAnimation.value;
          return Opacity(
            opacity: 1.0 - exitVal,
            child: Transform.scale(
              scale: 1.0 + exitVal * 0.15,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF0A0015),
                      Color(0xFF1A0030),
                      Color(0xFF2D0050),
                      Color(0xFF0A0015),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.3, 0.7, 1.0],
                  ),
                ),
                child: Stack(
                  children: [
                    // Arka plan glow
                    _buildBackgroundGlow(),
                    // Sparkle efektleri
                    ..._buildSparkles(),
                    // Yuzen kalpler
                    ..._buildFloatingHearts(),
                    // Yuzen Sukran yazilari
                    ..._buildFloatingTexts(),
                    // Ana icerik
                    _buildMainContent(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBackgroundGlow() {
    return Positioned.fill(
      child: Opacity(
        opacity: _glowOpacity.value,
        child: Stack(
          children: [
            // Ust glow
            Positioned(
              top: -100,
              left: -50,
              right: -50,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      const Color(0xFFFF4081).withOpacity(0.15),
                      const Color(0xFFFF4081).withOpacity(0.05),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            // Orta glow
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      const Color(0xFFE91E63).withOpacity(0.12),
                      const Color(0xFF9C27B0).withOpacity(0.06),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            // Alt glow
            Positioned(
              bottom: -50,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      const Color(0xFFFF6090).withOpacity(0.1),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSparkles() {
    final t = _sparkleController.value;
    return _sparkles.map((s) {
      final phase = (t * s.speed + s.delay) % 1.0;
      final twinkle = (math.sin(phase * math.pi * 2) + 1) / 2;
      return Positioned(
        left: s.x * MediaQuery.of(context).size.width,
        top: s.y * MediaQuery.of(context).size.height,
        child: Opacity(
          opacity: twinkle * s.opacity * _glowOpacity.value,
          child: Transform.rotate(
            angle: phase * math.pi,
            child: Icon(
              Icons.auto_awesome,
              size: s.size + twinkle * 3,
              color: Color.lerp(
                const Color(0xFFFFD700),
                const Color(0xFFFF80AB),
                twinkle,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildFloatingHearts() {
    final t = _floatingController.value;
    return _hearts.map((h) {
      final phase = (t * h.speed + h.delay) % 1.0;
      final y = h.y - phase * 1.2;
      if (y < -0.15) return const SizedBox.shrink();
      final wobbleX = math.sin(phase * math.pi * 3) * h.wobble;
      final fadeOut = y < 0.1 ? y / 0.1 : 1.0;
      final fadeIn = phase < 0.1 ? phase / 0.1 : 1.0;

      return Positioned(
        left: h.x * MediaQuery.of(context).size.width + wobbleX,
        top: y * MediaQuery.of(context).size.height,
        child: Opacity(
          opacity: (h.opacity * fadeOut * fadeIn * _glowOpacity.value)
              .clamp(0.0, 1.0),
          child: Transform.rotate(
            angle: math.sin(phase * math.pi * 2) * 0.3,
            child: ScaleTransition(
              scale: _heartScale,
              child: Icon(
                Icons.favorite,
                size: h.size,
                color: h.color,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildFloatingTexts() {
    final t = _floatingController.value;
    return _floatingTexts.map((ft) {
      final phase = (t * ft.speed + ft.delay) % 1.0;
      final y = ft.y - phase * 1.0;
      if (y < -0.1) return const SizedBox.shrink();
      final fadeOut = y < 0.15 ? y / 0.15 : 1.0;
      final fadeIn = phase < 0.15 ? phase / 0.15 : 1.0;

      return Positioned(
        left: ft.x * MediaQuery.of(context).size.width - 30,
        top: y * MediaQuery.of(context).size.height,
        child: Opacity(
          opacity: (ft.opacity * fadeOut * fadeIn * _nameOpacity.value)
              .clamp(0.0, 1.0),
          child: Transform.rotate(
            angle: ft.rotation + math.sin(phase * math.pi * 2) * 0.15,
            child: Text(
              'Şükran ❤️',
              style: GoogleFonts.dancingScript(
                fontSize: ft.size,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFFF80AB),
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildMainContent() {
    final screenW = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),

          // Buyuk kalp ve logo
          Opacity(
            opacity: _logoOpacity.value,
            child: Transform.scale(
              scale: _logoScale.value,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Dis glow
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFF4081)
                              .withOpacity(0.4 * _glowOpacity.value),
                          blurRadius: 60,
                          spreadRadius: 20,
                        ),
                        BoxShadow(
                          color: const Color(0xFF9C27B0)
                              .withOpacity(0.2 * _glowOpacity.value),
                          blurRadius: 100,
                          spreadRadius: 40,
                        ),
                      ],
                    ),
                  ),
                  // Kalp ikonu
                  ScaleTransition(
                    scale: _heartScale,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [
                            Color(0xFFFF4081),
                            Color(0xFFE91E63),
                            Color(0xFFFF6090),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        Icons.favorite_rounded,
                        size: 120,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Ic kalp parlama
                  Positioned(
                    top: 35,
                    left: 55,
                    child: Opacity(
                      opacity: _glowOpacity.value * 0.6,
                      child: Container(
                        width: 25,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 32),

          // SUKRAN ismi - ana yazi
          Transform.translate(
            offset: Offset(0, _nameSlide.value),
            child: Opacity(
              opacity: _nameOpacity.value,
              child: Column(
                children: [
                  // Kucuk kalpler cercevesi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMiniHeart(0),
                      _buildMiniHeart(1),
                      _buildMiniHeart(2),
                      const SizedBox(width: 8),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color(0xFFFF80AB),
                              Color(0xFFFF4081),
                              Color(0xFFE040FB),
                              Color(0xFFFF80AB),
                            ],
                          ).createShader(bounds);
                        },
                        child: Text(
                          'Şükran',
                          style: GoogleFonts.dancingScript(
                            fontSize: 56,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 2,
                            shadows: [
                              Shadow(
                                color:
                                    const Color(0xFFFF4081).withOpacity(0.5),
                                blurRadius: 20,
                              ),
                              Shadow(
                                color:
                                    const Color(0xFFE040FB).withOpacity(0.3),
                                blurRadius: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      _buildMiniHeart(3),
                      _buildMiniHeart(4),
                      _buildMiniHeart(5),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Alt yazi - askin mesaji
                  Opacity(
                    opacity: _subtitleOpacity.value,
                    child: Text(
                      '💕 Aşkım, Herşeyim 💕',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFFFF80AB).withOpacity(0.8),
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(flex: 2),

          // Alt logo
          Opacity(
            opacity: _subtitleOpacity.value,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        const Color(0xFFFF4081).withOpacity(0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Şüko YÖKDİL',
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.6),
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Sağlık Bilimleri Çalışma Rehberi',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.3),
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 48),
        ],
      ),
    );
  }

  Widget _buildMiniHeart(int index) {
    final phase =
        (_floatingController.value * 2 + index * 0.15) % 1.0;
    final bounce = math.sin(phase * math.pi * 2) * 4;
    return Transform.translate(
      offset: Offset(0, bounce),
      child: Opacity(
        opacity: 0.7,
        child: Icon(
          Icons.favorite,
          size: 14 + (index % 3) * 2.0,
          color: [
            const Color(0xFFFF4081),
            const Color(0xFFFF80AB),
            const Color(0xFFE040FB),
            const Color(0xFFF06292),
            const Color(0xFFFF1744),
            const Color(0xFFFF5252),
          ][index % 6],
        ),
      ),
    );
  }
}

// Veri modelleri
class _FloatingHeart {
  final double x, y, size, speed, delay, wobble, opacity;
  final Color color;
  _FloatingHeart({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.delay,
    required this.wobble,
    required this.opacity,
    required this.color,
  });
}

class _FloatingText {
  final double x, y, size, speed, delay, rotation, opacity;
  _FloatingText({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.delay,
    required this.rotation,
    required this.opacity,
  });
}

class _Sparkle {
  final double x, y, size, speed, delay, opacity;
  _Sparkle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.delay,
    required this.opacity,
  });
}
