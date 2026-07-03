import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../services/custom_words_service.dart';

enum _ScreenMode { list, flashcard, quiz, matching, writing, trueFalse }

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

  // Matching state
  List<_MatchTile> _matchTiles = [];
  int? _selectedMatchIndex;
  int _matchPairsFound = 0;
  int _matchTotalPairs = 0;
  int _matchAttempts = 0;
  bool _matchFinished = false;

  // Writing state
  List<CustomWord> _writingWords = [];
  int _writingIndex = 0;
  final TextEditingController _writingController = TextEditingController();
  bool? _writingCorrect;
  int _writingCorrectCount = 0;
  bool _writingFinished = false;
  bool _writingShowHint = false;

  // True/False state
  List<CustomWord> _tfWords = [];
  int _tfIndex = 0;
  String _tfShownTranslation = '';
  bool _tfIsCorrectPair = false;
  bool? _tfUserAnswer;
  int _tfCorrectCount = 0;
  bool _tfFinished = false;

  @override
  void initState() {
    super.initState();
    _loadWords();
  }

  @override
  void dispose() {
    _writingController.dispose();
    super.dispose();
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

  // ─── MODE STARTERS ─────────────────────────────────────

  void _startFlashcardMode() {
    if (_words.isEmpty) { _showEmptyMessage(); return; }
    setState(() {
      _mode = _ScreenMode.flashcard;
      _flashcardIndex = 0;
      _showAnswer = false;
    });
  }

  void _startQuizMode() {
    final unlearned = _words.where((w) => !w.isLearned).toList();
    if (unlearned.length < 2) {
      _showMinWordsMessage(2, 'Quiz');
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

  void _startMatchingMode() {
    if (_words.length < 4) {
      _showMinWordsMessage(4, 'Eşleştirme');
      return;
    }
    final shuffled = List<CustomWord>.from(_words)..shuffle();
    final pairs = shuffled.take(min(6, shuffled.length)).toList();
    final tiles = <_MatchTile>[];
    for (final word in pairs) {
      tiles.add(_MatchTile(text: word.english, pairId: word.id, isEnglish: true));
      tiles.add(_MatchTile(text: word.turkish, pairId: word.id, isEnglish: false));
    }
    tiles.shuffle();
    setState(() {
      _mode = _ScreenMode.matching;
      _matchTiles = tiles;
      _selectedMatchIndex = null;
      _matchPairsFound = 0;
      _matchTotalPairs = pairs.length;
      _matchAttempts = 0;
      _matchFinished = false;
    });
  }

  void _startWritingMode() {
    final unlearned = _words.where((w) => !w.isLearned).toList();
    if (unlearned.length < 2) {
      _showMinWordsMessage(2, 'Yazarak Öğren');
      return;
    }
    unlearned.shuffle();
    setState(() {
      _mode = _ScreenMode.writing;
      _writingWords = unlearned.take(min(10, unlearned.length)).toList();
      _writingIndex = 0;
      _writingController.clear();
      _writingCorrect = null;
      _writingCorrectCount = 0;
      _writingFinished = false;
      _writingShowHint = false;
    });
  }

  void _startTrueFalseMode() {
    if (_words.length < 3) {
      _showMinWordsMessage(3, 'Doğru/Yanlış');
      return;
    }
    final shuffled = List<CustomWord>.from(_words)..shuffle();
    setState(() {
      _mode = _ScreenMode.trueFalse;
      _tfWords = shuffled.take(min(15, shuffled.length)).toList();
      _tfIndex = 0;
      _tfUserAnswer = null;
      _tfCorrectCount = 0;
      _tfFinished = false;
      _generateTFQuestion();
    });
  }

  // ─── HELPERS ───────────────────────────────────────────

  void _showEmptyMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Henüz kelime eklenmemiş.', style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: AppTheme.accentAmber,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _showMinWordsMessage(int min, String modeName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$modeName için en az $min kelime gerekli.', style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: AppTheme.accentRose,
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
    final wrongOptions = otherWords.take(3).map((w) => w.turkish).toList();
    final options = [correctWord.turkish, ...wrongOptions];
    options.shuffle();
    setState(() => _quizOptions = options);
  }

  void _selectQuizOption(int index) {
    if (_selectedOption != null) return;
    final correctAnswer = _quizWords[_quizIndex].turkish;
    setState(() {
      _selectedOption = index;
      if (_quizOptions[index] == correctAnswer) _correctCount++;
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
        content: Text('"${word.english}" öğrenildi olarak işaretlendi ✓', style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: AppTheme.accentEmerald,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _generateTFQuestion() {
    if (_tfIndex >= _tfWords.length) return;
    final word = _tfWords[_tfIndex];
    final showCorrect = Random().nextBool();
    if (showCorrect) {
      _tfShownTranslation = word.turkish;
      _tfIsCorrectPair = true;
    } else {
      final others = _words.where((w) => w.id != word.id).toList();
      others.shuffle();
      _tfShownTranslation = others.isNotEmpty ? others.first.turkish : word.turkish;
      _tfIsCorrectPair = _tfShownTranslation == word.turkish;
    }
  }

  void _showAddWordDialog() {
    final engController = TextEditingController();
    final trController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.darkCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text('Yeni Kelime Ekle', style: GoogleFonts.outfit(fontSize: 20, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: engController,
              style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary),
              decoration: InputDecoration(
                labelText: 'İngilizce',
                labelStyle: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1))),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: AppTheme.primaryCyan)),
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
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1))),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: AppTheme.primaryCyan)),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.04),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text('İptal', style: GoogleFonts.inter(color: AppTheme.textMuted))),
          ElevatedButton(
            onPressed: () {
              final eng = engController.text.trim();
              final tr = trController.text.trim();
              if (eng.isNotEmpty && tr.isNotEmpty) { _addWord(eng, tr); Navigator.pop(ctx); }
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryCyan, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            child: Text('Ekle', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  // ─── BUILD ─────────────────────────────────────────────

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
                const Expanded(child: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)))
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

  String _modeTitle() {
    switch (_mode) {
      case _ScreenMode.flashcard: return 'Kartlar';
      case _ScreenMode.quiz: return 'Quiz';
      case _ScreenMode.matching: return 'Eşleştirme';
      case _ScreenMode.writing: return 'Yazarak Öğren';
      case _ScreenMode.trueFalse: return 'Doğru / Yanlış';
      case _ScreenMode.list: return 'Kelime Listem';
    }
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
            icon: const Icon(Icons.arrow_back_ios_rounded, color: AppTheme.textPrimary, size: 22),
          ),
          Expanded(
            child: Column(
              children: [
                Text(_modeTitle(), style: GoogleFonts.outfit(fontSize: 20, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
                if (_mode == _ScreenMode.list)
                  Text('${_words.length} kelime • ${_words.where((w) => w.isLearned).length} öğrenildi',
                    style: GoogleFonts.inter(fontSize: 12, color: AppTheme.textMuted)),
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
      case _ScreenMode.list: return _buildListMode();
      case _ScreenMode.flashcard: return _buildFlashcardMode();
      case _ScreenMode.quiz: return _buildQuizMode();
      case _ScreenMode.matching: return _buildMatchingMode();
      case _ScreenMode.writing: return _buildWritingMode();
      case _ScreenMode.trueFalse: return _buildTrueFalseMode();
    }
  }

  // ─── LIST MODE ─────────────────────────────────────────

  Widget _buildListMode() {
    return Column(
      children: [
        // Mode buttons — 2 rows
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: _modeBtn('🎴', 'Kartlar', AppTheme.primaryCyan, _startFlashcardMode)),
                  const SizedBox(width: 10),
                  Expanded(child: _modeBtn('🧠', 'Quiz', AppTheme.primaryIndigo, _startQuizMode)),
                  const SizedBox(width: 10),
                  Expanded(child: _modeBtn('🔗', 'Eşleştir', AppTheme.accentEmerald, _startMatchingMode)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: _modeBtn('✍️', 'Yaz', AppTheme.accentAmber, _startWritingMode)),
                  const SizedBox(width: 10),
                  Expanded(child: _modeBtn('✅', 'D/Y', AppTheme.accentRose, _startTrueFalseMode)),
                  const SizedBox(width: 10),
                  const Expanded(child: SizedBox()), // spacer for alignment
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: _words.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('📝', style: TextStyle(fontSize: 48)),
                      const SizedBox(height: 12),
                      Text('Henüz kelime eklenmemiş', style: GoogleFonts.inter(fontSize: 15, color: AppTheme.textMuted)),
                      const SizedBox(height: 6),
                      Text('+ butonuyla yeni kelime ekleyebilirsin', style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted)),
                    ],
                  ),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _words.length,
                  itemBuilder: (context, index) => _buildWordCard(_words[index]),
                ),
        ),
      ],
    );
  }

  Widget _modeBtn(String emoji, String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withValues(alpha: 0.25)),
        ),
        child: Column(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 4),
            Text(label, style: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w600, color: color)),
          ],
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
                Text(word.english, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: AppTheme.primaryCyan)),
                const SizedBox(height: 3),
                Text(word.turkish, style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500, color: AppTheme.textPrimary)),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => _toggleLearned(word),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: word.isLearned ? AppTheme.accentEmerald.withValues(alpha: 0.15) : Colors.white.withValues(alpha: 0.04),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: word.isLearned ? AppTheme.accentEmerald.withValues(alpha: 0.4) : Colors.white.withValues(alpha: 0.08)),
              ),
              child: Text(
                word.isLearned ? '✓ Öğrendim' : 'Öğrenmedim',
                style: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w500, color: word.isLearned ? AppTheme.accentEmerald : AppTheme.textMuted),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => _confirmDelete(word),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(color: AppTheme.accentRose.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.delete_outline_rounded, color: AppTheme.accentRose, size: 18),
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
        title: Text('Kelimeyi Sil', style: GoogleFonts.outfit(fontSize: 18, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        content: Text('"${word.english}" kelimesini silmek istediğine emin misin?', style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textSecondary)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text('İptal', style: GoogleFonts.inter(color: AppTheme.textMuted))),
          ElevatedButton(
            onPressed: () { Navigator.pop(ctx); _removeWord(word.id); },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.accentRose, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            child: Text('Sil', style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  // ─── FLASHCARD MODE ────────────────────────────────────

  Widget _buildFlashcardMode() {
    if (_words.isEmpty) return const Center(child: Text('📚', style: TextStyle(fontSize: 48)));
    final word = _words[_flashcardIndex % _words.length];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text('${_flashcardIndex + 1} / ${_words.length}', style: GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.textMuted)),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(value: (_flashcardIndex + 1) / _words.length, backgroundColor: Colors.white.withValues(alpha: 0.08), valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryCyan), minHeight: 4),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _showAnswer = !_showAnswer),
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity != null) {
                  if (details.primaryVelocity! < -100) {
                    setState(() { _flashcardIndex = (_flashcardIndex + 1) % _words.length; _showAnswer = false; });
                  } else if (details.primaryVelocity! > 100) {
                    setState(() { _flashcardIndex = (_flashcardIndex - 1 + _words.length) % _words.length; _showAnswer = false; });
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
                        ? [AppTheme.primaryCyan.withValues(alpha: 0.12), AppTheme.primaryCyan.withValues(alpha: 0.04)]
                        : [Colors.white.withValues(alpha: 0.06), Colors.white.withValues(alpha: 0.02)],
                    begin: Alignment.topLeft, end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: _showAnswer ? AppTheme.primaryCyan.withValues(alpha: 0.3) : Colors.white.withValues(alpha: 0.1), width: 1.5),
                  boxShadow: [BoxShadow(color: (_showAnswer ? AppTheme.primaryCyan : Colors.black).withValues(alpha: 0.15), blurRadius: 20, offset: const Offset(0, 8))],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!_showAnswer) ...[
                      const Text('🇬🇧', style: TextStyle(fontSize: 40)),
                      const SizedBox(height: 20),
                      Text(word.english, textAlign: TextAlign.center, style: GoogleFonts.outfit(fontSize: 28, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                      const SizedBox(height: 20),
                      Text('Dokunarak cevabı gör', style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted)),
                    ] else ...[
                      const Text('🇹🇷', style: TextStyle(fontSize: 40)),
                      const SizedBox(height: 16),
                      Text(word.turkish, textAlign: TextAlign.center, style: GoogleFonts.outfit(fontSize: 26, fontWeight: FontWeight.w700, color: AppTheme.primaryCyan)),
                      const SizedBox(height: 16),
                      if (word.isLearned)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(color: AppTheme.accentEmerald.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(8)),
                          child: Text('✓ Öğrenildi', style: GoogleFonts.inter(fontSize: 12, color: AppTheme.accentEmerald, fontWeight: FontWeight.w500)),
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _flashNav(Icons.arrow_back_ios_rounded, 'Önceki', () { setState(() { _flashcardIndex = (_flashcardIndex - 1 + _words.length) % _words.length; _showAnswer = false; }); }),
              _flashNav(Icons.shuffle_rounded, 'Karıştır', () { setState(() { _flashcardIndex = Random().nextInt(_words.length); _showAnswer = false; }); }),
              _flashNav(Icons.arrow_forward_ios_rounded, 'Sonraki', () { setState(() { _flashcardIndex = (_flashcardIndex + 1) % _words.length; _showAnswer = false; }); }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _flashNav(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.06), borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.white.withValues(alpha: 0.08))),
        child: Column(children: [
          Icon(icon, color: AppTheme.primaryCyan, size: 22),
          const SizedBox(height: 4),
          Text(label, style: GoogleFonts.inter(fontSize: 11, color: AppTheme.textMuted)),
        ]),
      ),
    );
  }

  // ─── QUIZ MODE ─────────────────────────────────────────

  Widget _buildQuizMode() {
    if (_quizFinished) return _buildGenericResult('Quiz', _correctCount, _quizWords.length, AppTheme.primaryIndigo, _startQuizMode);
    final word = _quizWords[_quizIndex];
    final correctAnswer = word.turkish;
    final answered = _selectedOption != null;
    final answeredCorrectly = answered && _quizOptions[_selectedOption!] == correctAnswer;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _progressBar(_quizIndex + 1, _quizWords.length, AppTheme.primaryIndigo),
          const SizedBox(height: 32),
          _questionCard('🇬🇧', word.english, 'Türkçe karşılığını seç'),
          const SizedBox(height: 24),
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
                  if (isCorrect) { bgColor = AppTheme.accentEmerald.withValues(alpha: 0.15); borderColor = AppTheme.accentEmerald.withValues(alpha: 0.4); textColor = AppTheme.accentEmerald; }
                  else if (isSelected) { bgColor = AppTheme.accentRose.withValues(alpha: 0.15); borderColor = AppTheme.accentRose.withValues(alpha: 0.4); textColor = AppTheme.accentRose; }
                }
                return GestureDetector(
                  onTap: () => _selectQuizOption(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(14), border: Border.all(color: borderColor)),
                    child: Row(children: [
                      Expanded(child: Text(option, style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w500, color: textColor))),
                      if (answered && isCorrect) const Icon(Icons.check_circle_rounded, color: AppTheme.accentEmerald, size: 22),
                      if (answered && isSelected && !isCorrect) const Icon(Icons.cancel_rounded, color: AppTheme.accentRose, size: 22),
                    ]),
                  ),
                );
              },
            ),
          ),
          if (answered) ...[
            Row(children: [
              if (answeredCorrectly) ...[
                Expanded(child: _actionBtn('Öğrendim ✓', AppTheme.accentEmerald.withValues(alpha: 0.15), AppTheme.accentEmerald, _markCurrentQuizWordLearned)),
                const SizedBox(width: 12),
              ],
              Expanded(child: _actionBtn(_quizIndex + 1 >= _quizWords.length ? 'Sonuçları Gör' : 'Sonraki →', AppTheme.primaryCyan, Colors.white, _nextQuizQuestion)),
            ]),
          ],
        ],
      ),
    );
  }

  // ─── MATCHING MODE ─────────────────────────────────────

  Widget _buildMatchingMode() {
    if (_matchFinished) {
      final accuracy = _matchTotalPairs > 0 ? ((_matchTotalPairs / max(_matchAttempts, 1)) * 100).round().clamp(0, 100) : 0;
      return _buildMatchResult(accuracy);
    }
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _progressBar(_matchPairsFound, _matchTotalPairs, AppTheme.accentEmerald),
          const SizedBox(height: 8),
          Text('$_matchPairsFound / $_matchTotalPairs eşleşme bulundu', style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted)),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: _matchTiles.length,
              itemBuilder: (context, index) {
                final tile = _matchTiles[index];
                if (tile.isMatched) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: AppTheme.accentEmerald.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppTheme.accentEmerald.withValues(alpha: 0.3)),
                    ),
                    child: Center(child: Icon(Icons.check_rounded, color: AppTheme.accentEmerald.withValues(alpha: 0.5), size: 28)),
                  );
                }
                final isSelected = _selectedMatchIndex == index;
                final isWrong = tile.isWrong;
                Color bg = Colors.white.withValues(alpha: 0.06);
                Color border = Colors.white.withValues(alpha: 0.1);
                Color textCol = tile.isEnglish ? AppTheme.primaryCyan : AppTheme.accentAmber;
                if (isSelected) { bg = textCol.withValues(alpha: 0.15); border = textCol.withValues(alpha: 0.5); }
                if (isWrong) { bg = AppTheme.accentRose.withValues(alpha: 0.15); border = AppTheme.accentRose.withValues(alpha: 0.5); textCol = AppTheme.accentRose; }

                return GestureDetector(
                  onTap: () => _onMatchTileTap(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(14), border: Border.all(color: border, width: isSelected ? 2 : 1)),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(tile.isEnglish ? '🇬🇧' : '🇹🇷', style: const TextStyle(fontSize: 14)),
                          const SizedBox(height: 4),
                          Text(tile.text, textAlign: TextAlign.center, style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, color: textCol), maxLines: 3, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onMatchTileTap(int index) {
    final tile = _matchTiles[index];
    if (tile.isMatched || tile.isWrong) return;

    if (_selectedMatchIndex == null) {
      setState(() => _selectedMatchIndex = index);
    } else if (_selectedMatchIndex == index) {
      setState(() => _selectedMatchIndex = null);
    } else {
      final firstTile = _matchTiles[_selectedMatchIndex!];
      _matchAttempts++;
      if (firstTile.pairId == tile.pairId && firstTile.isEnglish != tile.isEnglish) {
        // Match found!
        setState(() {
          _matchTiles[_selectedMatchIndex!] = firstTile.copyWith(isMatched: true);
          _matchTiles[index] = tile.copyWith(isMatched: true);
          _selectedMatchIndex = null;
          _matchPairsFound++;
          if (_matchPairsFound >= _matchTotalPairs) _matchFinished = true;
        });
      } else {
        // Wrong match
        final prevIdx = _selectedMatchIndex!;
        setState(() {
          _matchTiles[prevIdx] = firstTile.copyWith(isWrong: true);
          _matchTiles[index] = tile.copyWith(isWrong: true);
          _selectedMatchIndex = null;
        });
        Future.delayed(const Duration(milliseconds: 600), () {
          if (mounted) {
            setState(() {
              _matchTiles[prevIdx] = _matchTiles[prevIdx].copyWith(isWrong: false);
              _matchTiles[index] = _matchTiles[index].copyWith(isWrong: false);
            });
          }
        });
      }
    }
  }

  Widget _buildMatchResult(int accuracy) {
    final emoji = accuracy >= 80 ? '🏆' : accuracy >= 50 ? '👏' : '💪';
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 64)),
          const SizedBox(height: 20),
          Text('Eşleştirme Tamamlandı!', style: GoogleFonts.outfit(fontSize: 26, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
          const SizedBox(height: 12),
          Text('$_matchTotalPairs çift • $_matchAttempts deneme', style: GoogleFonts.inter(fontSize: 16, color: AppTheme.textSecondary)),
          const SizedBox(height: 32),
          _actionBtn('🔄 Tekrar Oyna', AppTheme.accentEmerald, Colors.white, _startMatchingMode),
          const SizedBox(height: 12),
          _actionBtn('📋 Kelime Listesine Dön', Colors.white.withValues(alpha: 0.06), AppTheme.textPrimary, () => setState(() => _mode = _ScreenMode.list), border: Colors.white.withValues(alpha: 0.08)),
        ],
      ),
    );
  }

  // ─── WRITING MODE ──────────────────────────────────────

  Widget _buildWritingMode() {
    if (_writingFinished) return _buildGenericResult('Yazarak Öğren', _writingCorrectCount, _writingWords.length, AppTheme.accentAmber, _startWritingMode);
    final word = _writingWords[_writingIndex];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _progressBar(_writingIndex + 1, _writingWords.length, AppTheme.accentAmber),
          const SizedBox(height: 32),
          _questionCard('🇹🇷', word.turkish, 'İngilizce karşılığını yaz'),
          const SizedBox(height: 24),
          // Hint
          if (_writingShowHint && _writingCorrect == null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: AppTheme.accentAmber.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.accentAmber.withValues(alpha: 0.3)),
              ),
              child: Text('💡 İpucu: ${_getHint(word.english)}', style: GoogleFonts.inter(fontSize: 14, color: AppTheme.accentAmber)),
            ),
          // Input
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: _writingCorrect == null
                    ? Colors.white.withValues(alpha: 0.1)
                    : _writingCorrect! ? AppTheme.accentEmerald.withValues(alpha: 0.5) : AppTheme.accentRose.withValues(alpha: 0.5),
                width: 1.5,
              ),
            ),
            child: TextField(
              controller: _writingController,
              enabled: _writingCorrect == null,
              style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600, color: AppTheme.textPrimary),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'İngilizce yaz...',
                hintStyle: GoogleFonts.inter(fontSize: 16, color: AppTheme.textMuted),
                border: InputBorder.none,
              ),
              onSubmitted: (_) => _checkWritingAnswer(),
            ),
          ),
          const SizedBox(height: 16),
          if (_writingCorrect == null)
            Row(children: [
              if (!_writingShowHint) ...[
                Expanded(child: _actionBtn('💡 İpucu', AppTheme.accentAmber.withValues(alpha: 0.15), AppTheme.accentAmber, () => setState(() => _writingShowHint = true))),
                const SizedBox(width: 12),
              ],
              Expanded(child: _actionBtn('Kontrol Et ✓', AppTheme.primaryCyan, Colors.white, _checkWritingAnswer)),
            ]),
          if (_writingCorrect != null) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: (_writingCorrect! ? AppTheme.accentEmerald : AppTheme.accentRose).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: (_writingCorrect! ? AppTheme.accentEmerald : AppTheme.accentRose).withValues(alpha: 0.3)),
              ),
              child: Column(
                children: [
                  Text(_writingCorrect! ? '✅ Doğru!' : '❌ Yanlış!', style: GoogleFonts.outfit(fontSize: 18, fontWeight: FontWeight.w700, color: _writingCorrect! ? AppTheme.accentEmerald : AppTheme.accentRose)),
                  if (!_writingCorrect!) ...[
                    const SizedBox(height: 6),
                    Text('Doğru cevap: ${word.english}', style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),
            _actionBtn(_writingIndex + 1 >= _writingWords.length ? 'Sonuçları Gör' : 'Sonraki →', AppTheme.primaryCyan, Colors.white, _nextWritingQuestion),
          ],
        ],
      ),
    );
  }

  String _getHint(String word) {
    if (word.length <= 2) return word;
    final chars = word.split('');
    final hint = StringBuffer(chars[0]);
    for (int i = 1; i < chars.length - 1; i++) {
      hint.write(chars[i] == ' ' ? ' ' : '_');
    }
    hint.write(chars.last);
    return hint.toString();
  }

  void _checkWritingAnswer() {
    if (_writingCorrect != null) return;
    final answer = _writingController.text.trim().toLowerCase();
    final correct = _writingWords[_writingIndex].english.trim().toLowerCase();
    final isCorrect = answer == correct;
    setState(() {
      _writingCorrect = isCorrect;
      if (isCorrect) _writingCorrectCount++;
    });
  }

  void _nextWritingQuestion() {
    if (_writingIndex + 1 >= _writingWords.length) {
      setState(() => _writingFinished = true);
      return;
    }
    setState(() {
      _writingIndex++;
      _writingController.clear();
      _writingCorrect = null;
      _writingShowHint = false;
    });
  }

  // ─── TRUE/FALSE MODE ───────────────────────────────────

  Widget _buildTrueFalseMode() {
    if (_tfFinished) return _buildGenericResult('Doğru / Yanlış', _tfCorrectCount, _tfWords.length, AppTheme.accentRose, _startTrueFalseMode);
    final word = _tfWords[_tfIndex];
    final answered = _tfUserAnswer != null;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _progressBar(_tfIndex + 1, _tfWords.length, AppTheme.accentRose),
          const SizedBox(height: 32),
          // English word
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
            ),
            child: Column(children: [
              const Text('🇬🇧', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 10),
              Text(word.english, textAlign: TextAlign.center, style: GoogleFonts.outfit(fontSize: 24, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
            ]),
          ),
          const SizedBox(height: 16),
          // Shown translation
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: AppTheme.primaryIndigo.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppTheme.primaryIndigo.withValues(alpha: 0.2)),
            ),
            child: Column(children: [
              const Text('🇹🇷', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 6),
              Text(_tfShownTranslation, textAlign: TextAlign.center, style: GoogleFonts.outfit(fontSize: 22, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
              const SizedBox(height: 6),
              Text('Bu çeviri doğru mu?', style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted)),
            ]),
          ),
          const Spacer(),
          if (!answered) Row(children: [
            Expanded(child: _tfButton('❌ Yanlış', AppTheme.accentRose, () => _answerTF(false))),
            const SizedBox(width: 16),
            Expanded(child: _tfButton('✅ Doğru', AppTheme.accentEmerald, () => _answerTF(true))),
          ]),
          if (answered) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: ((_tfUserAnswer == _tfIsCorrectPair) ? AppTheme.accentEmerald : AppTheme.accentRose).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(children: [
                Text((_tfUserAnswer == _tfIsCorrectPair) ? '✅ Doğru bildin!' : '❌ Yanlış!', style: GoogleFonts.outfit(fontSize: 18, fontWeight: FontWeight.w700, color: (_tfUserAnswer == _tfIsCorrectPair) ? AppTheme.accentEmerald : AppTheme.accentRose)),
                if (!(_tfUserAnswer == _tfIsCorrectPair)) ...[
                  const SizedBox(height: 4),
                  Text('Doğru çeviri: ${word.turkish}', style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary)),
                ],
              ]),
            ),
            const SizedBox(height: 16),
            _actionBtn(_tfIndex + 1 >= _tfWords.length ? 'Sonuçları Gör' : 'Sonraki →', AppTheme.primaryCyan, Colors.white, _nextTFQuestion),
          ],
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _tfButton(String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(16), border: Border.all(color: color.withValues(alpha: 0.4), width: 1.5)),
        child: Center(child: Text(label, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: color))),
      ),
    );
  }

  void _answerTF(bool userSaysTrue) {
    final isCorrect = userSaysTrue == _tfIsCorrectPair;
    setState(() {
      _tfUserAnswer = userSaysTrue;
      if (isCorrect) _tfCorrectCount++;
    });
  }

  void _nextTFQuestion() {
    if (_tfIndex + 1 >= _tfWords.length) {
      setState(() => _tfFinished = true);
      return;
    }
    setState(() {
      _tfIndex++;
      _tfUserAnswer = null;
      _generateTFQuestion();
    });
  }

  // ─── SHARED WIDGETS ────────────────────────────────────

  Widget _progressBar(int current, int total, Color color) {
    return Column(children: [
      Text('$current / $total', style: GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w600, color: AppTheme.textMuted)),
      const SizedBox(height: 8),
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: LinearProgressIndicator(value: current / total, backgroundColor: Colors.white.withValues(alpha: 0.08), valueColor: AlwaysStoppedAnimation<Color>(color), minHeight: 4),
      ),
    ]);
  }

  Widget _questionCard(String flag, String text, String subtitle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.06), borderRadius: BorderRadius.circular(18), border: Border.all(color: Colors.white.withValues(alpha: 0.08))),
      child: Column(children: [
        Text(flag, style: const TextStyle(fontSize: 32)),
        const SizedBox(height: 12),
        Text(text, textAlign: TextAlign.center, style: GoogleFonts.outfit(fontSize: 26, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
        const SizedBox(height: 8),
        Text(subtitle, style: GoogleFonts.inter(fontSize: 13, color: AppTheme.textMuted)),
      ]),
    );
  }

  Widget _actionBtn(String label, Color bg, Color textColor, VoidCallback onTap, {Color? border}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(14), border: border != null ? Border.all(color: border) : null),
        child: Center(child: Text(label, style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: textColor))),
      ),
    );
  }

  Widget _buildGenericResult(String title, int correct, int total, Color color, VoidCallback restart) {
    final percentage = (correct / total * 100).round();
    final emoji = percentage >= 80 ? '🎉' : percentage >= 50 ? '👍' : '💪';
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 64)),
          const SizedBox(height: 20),
          Text('$title Tamamlandı!', style: GoogleFonts.outfit(fontSize: 26, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
          const SizedBox(height: 12),
          Text('$correct / $total doğru', style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500, color: AppTheme.textSecondary)),
          const SizedBox(height: 6),
          Text('%$percentage başarı', style: GoogleFonts.outfit(fontSize: 32, fontWeight: FontWeight.w700, color: percentage >= 80 ? AppTheme.accentEmerald : percentage >= 50 ? AppTheme.accentAmber : AppTheme.accentRose)),
          const SizedBox(height: 32),
          _actionBtn('🔄 Tekrar Dene', color, Colors.white, restart),
          const SizedBox(height: 12),
          _actionBtn('📋 Kelime Listesine Dön', Colors.white.withValues(alpha: 0.06), AppTheme.textPrimary, () => setState(() => _mode = _ScreenMode.list), border: Colors.white.withValues(alpha: 0.08)),
        ],
      ),
    );
  }
}

// ─── MATCHING TILE MODEL ─────────────────────────────────

class _MatchTile {
  final String text;
  final int pairId;
  final bool isEnglish;
  final bool isMatched;
  final bool isWrong;

  const _MatchTile({
    required this.text,
    required this.pairId,
    required this.isEnglish,
    this.isMatched = false,
    this.isWrong = false,
  });

  _MatchTile copyWith({bool? isMatched, bool? isWrong}) => _MatchTile(
    text: text,
    pairId: pairId,
    isEnglish: isEnglish,
    isMatched: isMatched ?? this.isMatched,
    isWrong: isWrong ?? this.isWrong,
  );
}
