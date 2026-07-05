import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'dart:async';
import '../theme/app_theme.dart';
import '../data/vocab_pool_data.dart';
import '../widgets/glass_card.dart';
import '../services/daily_quest_service.dart';

class WordGamesScreen extends StatefulWidget {
  const WordGamesScreen({super.key});

  @override
  State<WordGamesScreen> createState() => _WordGamesScreenState();
}

class _WordGamesScreenState extends State<WordGamesScreen> {
  // Oyun modları: 0 = Menü, 1 = Hafıza Oyunu
  int _currentMode = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: _currentMode == 0 ? _buildMenu() : const MemoryGame(),
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Column(
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
                      'Kelime Oyunları',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Text(
                      'Eğlenerek öğren',
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

        const SizedBox(height: 32),

        // Oyun Seçimi
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () => setState(() => _currentMode = 1),
            child: GlassCard(
              padding: const EdgeInsets.all(24),
              borderColor: const Color(0xFF8B5CF6).withOpacity(0.3),
              child: Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8B5CF6).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text('🧩', style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hafıza Eşleştirme',
                          style: GoogleFonts.outfit(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'İngilizce ve Türkçe kartları eşleştir. Hafızanı ve hızını test et!',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                            height: 1.4,
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

        const SizedBox(height: 16),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GlassCard(
            padding: const EdgeInsets.all(24),
            borderColor: Colors.white.withOpacity(0.05),
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Icon(Icons.lock_rounded, color: AppTheme.textMuted, size: 28),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kelime Avı (Yakında)',
                        style: GoogleFonts.outfit(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textMuted,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Zamana karşı kelime avı. Gelecek güncellemede eklenecek.',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppTheme.textMuted,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// HAFIZA OYUNU
// ─────────────────────────────────────────────────────────

class MemoryGameCard {
  final String text;
  final int pairId; // Eşleşmeyi bulmak için ID
  final bool isEnglish;
  bool isFlipped;
  bool isMatched;

  MemoryGameCard({
    required this.text,
    required this.pairId,
    required this.isEnglish,
    this.isFlipped = false,
    this.isMatched = false,
  });
}

class MemoryGame extends StatefulWidget {
  const MemoryGame({super.key});

  @override
  State<MemoryGame> createState() => _MemoryGameState();
}

class _MemoryGameState extends State<MemoryGame> {
  List<MemoryGameCard> _cards = [];
  int? _firstSelectedIndex;
  bool _isProcessing = false;
  int _score = 0;
  int _matches = 0;
  Timer? _timer;
  int _seconds = 0;

  @override
  void initState() {
    super.initState();
    _initGame();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _initGame() {
    _timer?.cancel();
    final randomWords = (vocabWords.toList()..shuffle()).take(6).toList();
    
    List<MemoryGameCard> newCards = [];
    for (int i = 0; i < randomWords.length; i++) {
      newCards.add(MemoryGameCard(
        text: randomWords[i].english,
        pairId: i,
        isEnglish: true,
      ));
      newCards.add(MemoryGameCard(
        text: randomWords[i].turkish,
        pairId: i,
        isEnglish: false,
      ));
    }
    
    newCards.shuffle();

    setState(() {
      _cards = newCards;
      _firstSelectedIndex = null;
      _isProcessing = false;
      _score = 0;
      _matches = 0;
      _seconds = 0;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() {
        _seconds++;
      });
    });
  }

  void _onCardTap(int index) {
    if (_isProcessing) return;
    if (_cards[index].isMatched) return;
    if (_cards[index].isFlipped) return;

    setState(() {
      _cards[index].isFlipped = true;
    });

    if (_firstSelectedIndex == null) {
      _firstSelectedIndex = index;
    } else {
      _isProcessing = true;
      final firstIndex = _firstSelectedIndex!;
      final secondIndex = index;

      if (_cards[firstIndex].pairId == _cards[secondIndex].pairId) {
        // Eşleşme başarılı!
        Future.delayed(const Duration(milliseconds: 500), () {
          if (!mounted) return;
          setState(() {
            _cards[firstIndex].isMatched = true;
            _cards[secondIndex].isMatched = true;
            _score += 10;
            _matches++;
            _firstSelectedIndex = null;
            _isProcessing = false;

            if (_matches == 6) {
              _timer?.cancel();
              DailyQuestService.progressQuest('q_games_1', 1);
              _showWinDialog();
            }
          });
        });
      } else {
        // Eşleşme hatalı!
        Future.delayed(const Duration(milliseconds: 1000), () {
          if (!mounted) return;
          setState(() {
            _cards[firstIndex].isFlipped = false;
            _cards[secondIndex].isFlipped = false;
            if (_score > 0) _score -= 2; // Ceza
            _firstSelectedIndex = null;
            _isProcessing = false;
          });
        });
      }
    }
  }

  void _showWinDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('🎉', style: TextStyle(fontSize: 64)),
            const SizedBox(height: 16),
            Text(
              'Tebrikler!',
              style: GoogleFonts.outfit(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$_seconds saniyede tamamladın!\nSkor: $_score',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16,
                color: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                      Navigator.pop(context); // Menüye dön
                    },
                    child: Text('Çıkış', style: GoogleFonts.inter(color: AppTheme.textMuted)),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                      _initGame();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8B5CF6),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text('Tekrar', style: GoogleFonts.inter(fontWeight: FontWeight.w600, color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String _formatTime(int totalSeconds) {
    int minutes = totalSeconds ~/ 60;
    int seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hafıza Eşleştirme',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.timer_outlined, size: 14, color: AppTheme.textMuted),
                        const SizedBox(width: 4),
                        Text(
                          _formatTime(_seconds),
                          style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textMuted, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 16),
                        const Icon(Icons.star_rounded, size: 14, color: Color(0xFFF59E0B)),
                        const SizedBox(width: 4),
                        Text(
                          '$_score Puan',
                          style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textMuted, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: _initGame,
                icon: const Icon(Icons.refresh_rounded, color: AppTheme.primaryCyan, size: 24),
              ),
            ],
          ),
        ),

        // Grid
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: _cards.length,
            itemBuilder: (context, index) {
              final card = _cards[index];
              return GestureDetector(
                onTap: () => _onCardTap(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: card.isMatched 
                        ? AppTheme.accentEmerald.withOpacity(0.1)
                        : card.isFlipped 
                            ? (card.isEnglish ? AppTheme.primaryCyan.withOpacity(0.2) : const Color(0xFF8B5CF6).withOpacity(0.2))
                            : Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: card.isMatched 
                          ? AppTheme.accentEmerald.withOpacity(0.5)
                          : card.isFlipped 
                              ? (card.isEnglish ? AppTheme.primaryCyan.withOpacity(0.5) : const Color(0xFF8B5CF6).withOpacity(0.5))
                              : Colors.white.withOpacity(0.1),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: card.isFlipped || card.isMatched
                          ? Text(
                              card.text,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: card.isMatched 
                                    ? AppTheme.accentEmerald 
                                    : Colors.white,
                              ),
                            )
                          : const Icon(
                              Icons.question_mark_rounded,
                              color: AppTheme.textMuted,
                              size: 32,
                            ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
