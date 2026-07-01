import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/custom_words_service.dart';

enum _ScreenMode { list, flashcard, quiz }

class CustomWordsScreen extends StatefulWidget {
  const CustomWordsScreen({super.key});

  @override
  State<CustomWordsScreen> createState() => _CustomWordsScreenState();
}

class _CustomWordsScreenState extends State<CustomWordsScreen> {
  List<CustomWord> _words = [];
  bool _isLoading = true;
  _ScreenMode _mode = _ScreenMode.list;

  // Flashcard state
  int _flashcardIndex = 0;
  bool _showAnswer = false;

  // Quiz state
  List<CustomWord> _quizWords = [];
  int _quizIndex = 0;
  List<String> _quizOptions = [];
  int? _selectedOption;
  int _correctCount = 0;
  bool _quizFinished = false;

  @override
  void initState() {
    super.initState();
    _loadWords();
  }

  Future<void> _loadWords() async {
    final words = await CustomWordsService.getWords();
    if (mounted) {
      setState(() {
        _words = words;
        _isLoading = false;
      });
    }
  }

  Future<void> _addWord(String english, String turkish) async {
    final words = await CustomWordsService.addWord(english, turkish);
    setState(() => _words = words);
  }

  Future<void> _removeWord(int id) async {
    final words = await CustomWordsService.removeWord(id);
    setState(() => _words = words);
  }

  Future<void> _toggleLearned(CustomWord word) async {
    if (word.isLearned) {
      final words = await CustomWordsService.markUnlearned(word.id);
      setState(() => _words = words);
    } else {
      final words = await CustomWordsService.markLearned(word.id);
      setState(() => _words = words);
    }
  }

  void _startFlashcardMode() {
    if (_words.isEmpty) {
      _showEmptyMessage();
      return;
    }
    setState(() {
      _mode = _ScreenMode.flashcard;
      _flashcardIndex = 0;
      _showAnswer = false;
    });
  }

  void _startQuizMode() {
    final unlearned = _words.where((w) => !w.isLearned).toList();
    if (unlearned.length < 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Quiz için en az 2 öğrenilmemiş kelime gerekli.',
            style: GoogleFonts.inter(color: Colors.white),
          ),
          backgroundColor: AppTheme.accentRose,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
      return;
    }
    unlearned.shuffle();
    setState(() {
      _mode = _ScreenMode.quiz;
      _quizWords = unlearned;
      _quizIndex = 0;
      _selectedOption = null;
      _correctCount = 0;
      _quizFinished = false;
      _generateQuizOptions();
    });
  }

  void _showEmptyMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Henüz kelime eklenmemiş.',
          style: GoogleFonts.inter(color: Colors.white),
        ),
        backgroundColor: AppTheme.accentAmber,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _generateQuizOptions() {
    if (_quizIndex >= _quizWords.length) return;
    final correctWord = _quizWords[_quizIndex];
    final otherWords = _words.where((w) => w.id != correctWord.id).toList();
    otherWords.shuffle();
    final wrongOptions = otherWords
        .take(3)
        .map((w) => w.turkish)
        .toList();
    final options = [correctWord.turkish, ...wrongOptions];
    options.shuffle();
    setState(() => _quizOptions = options);
  }

  void _selectQuizOption(int index) {
    if (_selectedOption != null) return;
    final correctAnswer = _quizWords[_quizIndex].turkish;
    setState(() {
      _selectedOption = index;
      if (_quizOptions[index] == correctAnswer) {
        _correctCount++;
      }
    });
  }

  void _nextQuizQuestion() {
    if (_quizIndex + 1 >= _quizWords.length) {
      setState(() => _quizFinished = true);
      return;
    }
    setState(() {
      _quizIndex++;
      _selectedOption = null;
      _generateQuizOptions();
    });
  }

  Future<void> _markCurrentQuizWordLearned() async {
    final word = _quizWords[_quizIndex];
    final words = await CustomWordsService.markLearned(word.id);
    if (!mounted) return;
    setState(() => _words = words);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '"${word.english}" öğrenildi olarak işaretlendi ✓',
          style: GoogleFonts.inter(color: Colors.white),
        ),
        backgroundColor: AppTheme.accentEmerald,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _showAddWordDialog() {
    final engController = TextEditingController();
    final trController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text(
          'Yeni Kelime Ekle',
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: engController,
              style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary),
              decoration: InputDecoration(
                labelText: 'İngilizce',
                labelStyle: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppTheme.primaryCyan),
                ),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.04),
              ),
            ),
            const SizedBox(height: 14),
            TextField(
              controller: trController,
              style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary),
              decoration: InputDecoration(
                labelText: 'Türkçe',
                labelStyle: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppTheme.primaryCyan),
                ),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.04),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(
              'İptal',
              style: GoogleFonts.inter(color: AppTheme.textMuted),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final eng = engController.text.trim();
              final tr = trController.text.trim();
              if (eng.isNotEmpty && tr.isNotEmpty) {
                _addWord(eng, tr);
                Navigator.pop(ctx);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryCyan,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: Text('Ekle', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.bgGradient),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              if (_isLoading)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(color: AppTheme.primaryCyan),
                  ),
                )
              else
                Expanded(child: _buildBody()),
            ],
          ),
        ),
      ),
      floatingActionButton: _mode == _ScreenMode.list
          ? FloatingActionButton(
              onPressed: _showAddWordDialog,
              backgroundColor: AppTheme.primaryCyan,
              child: const Icon(Icons.add_rounded, color: Colors.white),
            )
          : null,
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (_mode != _ScreenMode.list) {
                setState(() => _mode = _ScreenMode.list);
              } else {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.arrow_back_ios_rounded,
                color: AppTheme.textPrimary, size: 22),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _mode == _ScreenMode.flashcard
                      ? 'Kartlar'
                      : _mode == _ScreenMode.quiz
                          ? 'Quiz'
                          : 'Kelime Listem',
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
                if (_mode == _ScreenMode.list)
                  Text(
                    '${_words.length} kelime • ${_words.where((w) => w.isLearned).length} öğrenildi',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppTheme.textMuted,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 44),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_mode) {
      case _ScreenMode.list:
        return _buildListMode();
      case _ScreenMode.flashcard:
        return _buildFlashcardMode();
      case _ScreenMode.quiz:
        return _buildQuizMode();
    }
  }

  Widget _buildListMode() {
    return Column(
      children: [
        // Mode buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(child: _buildModeButton('🎴 Kartlar', _startFlashcardMode)),
              const SizedBox(width: 12),
              Expanded(child: _buildModeButton('🧠 Quiz', _startQuizMode)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        // Word list
        Expanded(
          child: _words.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('📝', style: TextStyle(fontSize: 48)),
                      const SizedBox(height: 12),
                      Text(
                        'Henüz kelime eklenmemiş',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: AppTheme.textMuted,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '+ butonuyla yeni kelime ekleyebilirsin',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppTheme.textMuted,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _words.length,
                  itemBuilder: (context, index) =>
                      _buildWordCard(_words[index]),
                ),
        ),
      ],
    );
  }

  Widget _buildModeButton(String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.06),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWordCard(CustomWord word) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  word.english,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.primaryCyan,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  word.turkish,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          // Learned chip
          GestureDetector(
            onTap: () => _toggleLearned(word),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: word.isLearned
                    ? AppTheme.accentEmerald.withValues(alpha: 0.15)
                    : Colors.white.withValues(alpha: 0.04),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: word.isLearned
                      ? AppTheme.accentEmerald.withValues(alpha: 0.4)
                      : Colors.white.withValues(alpha: 0.08),
                ),
              ),
              child: Text(
                word.isLearned ? '✓ Öğrendim' : 'Öğrenmedim',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: word.isLearned
                      ? AppTheme.accentEmerald
                      : AppTheme.textMuted,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Delete button
          GestureDetector(
            onTap: () => _confirmDelete(word),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppTheme.accentRose.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.delete_outline_rounded,
                  color: AppTheme.accentRose, size: 18),
            ),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(CustomWord word) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text(
          'Kelimeyi Sil',
          style: GoogleFonts.outfit(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        content: Text(
          '"${word.english}" kelimesini silmek istediğine emin misin?',
          style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('İptal', style: GoogleFonts.inter(color: AppTheme.textMuted)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              _removeWord(word.id);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRose,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: Text('Sil', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  // ─── FLASHCARD MODE ───────────────────────────────────────────────────────────

  Widget _buildFlashcardMode() {
    if (_words.isEmpty) {
      return const Center(child: Text('📚', style: TextStyle(fontSize: 48)));
    }

    final word = _words[_flashcardIndex % _words.length];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Progress indicator
          Text(
            '${_flashcardIndex + 1} / ${_words.length}',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textMuted,
            ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: (_flashcardIndex + 1) / _words.length,
              backgroundColor: Colors.white.withValues(alpha: 0.08),
              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryCyan),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 24),
          // Flashcard
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _showAnswer = !_showAnswer),
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity != null) {
                  if (details.primaryVelocity! < -100) {
                    setState(() {
                      _flashcardIndex = (_flashcardIndex + 1) % _words.length;
                      _showAnswer = false;
                    });
                  } else if (details.primaryVelocity! > 100) {
                    setState(() {
                      _flashcardIndex =
                          (_flashcardIndex - 1 + _words.length) % _words.length;
                      _showAnswer = false;
                    });
                  }
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutCubic,
                width: double.infinity,
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _showAnswer
                        ? [
                            AppTheme.primaryCyan.withValues(alpha: 0.12),
                            AppTheme.primaryCyan.withValues(alpha: 0.04),
                          ]
                        : [
                            Colors.white.withValues(alpha: 0.06),
                            Colors.white.withValues(alpha: 0.02),
                          ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: _showAnswer
                        ? AppTheme.primaryCyan.withValues(alpha: 0.3)
                        : Colors.white.withValues(alpha: 0.1),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: (_showAnswer ? AppTheme.primaryCyan : Colors.black)
                          .withValues(alpha: 0.15),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!_showAnswer) ...[
                      const Text('🇬🇧', style: TextStyle(fontSize: 40)),
                      const SizedBox(height: 20),
                      Text(
                        word.english,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Dokunarak cevabı gör',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppTheme.textMuted,
                        ),
                      ),
                    ] else ...[
                      const Text('🇹🇷', style: TextStyle(fontSize: 40)),
                      const SizedBox(height: 16),
                      Text(
                        word.turkish,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.primaryCyan,
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (word.isLearned)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppTheme.accentEmerald.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '✓ Öğrenildi',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppTheme.accentEmerald,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Navigation buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFlashcardNav(Icons.arrow_back_ios_rounded, 'Önceki', () {
                setState(() {
                  _flashcardIndex =
                      (_flashcardIndex - 1 + _words.length) % _words.length;
                  _showAnswer = false;
                });
              }),
              _buildFlashcardNav(Icons.shuffle_rounded, 'Karıştır', () {
                setState(() {
                  _flashcardIndex =
                      Random().nextInt(_words.length);
                  _showAnswer = false;
                });
              }),
              _buildFlashcardNav(Icons.arrow_forward_ios_rounded, 'Sonraki', () {
                setState(() {
                  _flashcardIndex = (_flashcardIndex + 1) % _words.length;
                  _showAnswer = false;
                });
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFlashcardNav(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.06),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        ),
        child: Column(
          children: [
            Icon(icon, color: AppTheme.primaryCyan, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.inter(fontSize: 11, color: AppTheme.textMuted),
            ),
          ],
        ),
      ),
    );
  }

  // ─── QUIZ MODE ────────────────────────────────────────────────────────────────

  Widget _buildQuizMode() {
    if (_quizFinished) {
      return _buildQuizResult();
    }

    final word = _quizWords[_quizIndex];
    final correctAnswer = word.turkish;
    final answered = _selectedOption != null;
    final answeredCorrectly =
        answered && _quizOptions[_selectedOption!] == correctAnswer;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Progress
          Text(
            '${_quizIndex + 1} / ${_quizWords.length}',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textMuted,
            ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: (_quizIndex + 1) / _quizWords.length,
              backgroundColor: Colors.white.withValues(alpha: 0.08),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppTheme.primaryIndigo),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 32),

          // Question word
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
            ),
            child: Column(
              children: [
                const Text('🇬🇧', style: TextStyle(fontSize: 32)),
                const SizedBox(height: 12),
                Text(
                  word.english,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Türkçe karşılığını seç',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: AppTheme.textMuted,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Options
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: _quizOptions.length,
              itemBuilder: (context, index) {
                final option = _quizOptions[index];
                final isCorrect = option == correctAnswer;
                final isSelected = _selectedOption == index;

                Color bgColor = Colors.white.withValues(alpha: 0.06);
                Color borderColor = Colors.white.withValues(alpha: 0.08);
                Color textColor = AppTheme.textPrimary;

                if (answered) {
                  if (isCorrect) {
                    bgColor = AppTheme.accentEmerald.withValues(alpha: 0.15);
                    borderColor = AppTheme.accentEmerald.withValues(alpha: 0.4);
                    textColor = AppTheme.accentEmerald;
                  } else if (isSelected && !isCorrect) {
                    bgColor = AppTheme.accentRose.withValues(alpha: 0.15);
                    borderColor = AppTheme.accentRose.withValues(alpha: 0.4);
                    textColor = AppTheme.accentRose;
                  }
                }

                return GestureDetector(
                  onTap: () => _selectQuizOption(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: borderColor),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            option,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: textColor,
                            ),
                          ),
                        ),
                        if (answered && isCorrect)
                          const Icon(Icons.check_circle_rounded,
                              color: AppTheme.accentEmerald, size: 22),
                        if (answered && isSelected && !isCorrect)
                          const Icon(Icons.cancel_rounded,
                              color: AppTheme.accentRose, size: 22),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Bottom actions after answering
          if (answered) ...[
            Row(
              children: [
                if (answeredCorrectly)
                  Expanded(
                    child: GestureDetector(
                      onTap: _markCurrentQuizWordLearned,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: AppTheme.accentEmerald.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: AppTheme.accentEmerald.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Öğrendim ✓',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.accentEmerald,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (answeredCorrectly) const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: _nextQuizQuestion,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryCyan,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          _quizIndex + 1 >= _quizWords.length
                              ? 'Sonuçları Gör'
                              : 'Sonraki →',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuizResult() {
    final percentage = (_correctCount / _quizWords.length * 100).round();
    final emoji = percentage >= 80
        ? '🎉'
        : percentage >= 50
            ? '👍'
            : '💪';

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 64)),
          const SizedBox(height: 20),
          Text(
            'Quiz Tamamlandı!',
            style: GoogleFonts.outfit(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '$_correctCount / ${_quizWords.length} doğru',
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppTheme.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '%$percentage başarı',
            style: GoogleFonts.outfit(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: percentage >= 80
                  ? AppTheme.accentEmerald
                  : percentage >= 50
                      ? AppTheme.accentAmber
                      : AppTheme.accentRose,
            ),
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap: _startQuizMode,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: AppTheme.primaryIndigo,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  '🔄 Tekrar Dene',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () => setState(() => _mode = _ScreenMode.list),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
              ),
              child: Center(
                child: Text(
                  '📋 Kelime Listesine Dön',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
