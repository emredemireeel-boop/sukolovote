import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/vocab_pool_data.dart';
import '../services/oxford_service.dart';
import '../services/health_service.dart';

class VocabPoolScreen extends StatefulWidget {
  final String? initialCategory;
  
  const VocabPoolScreen({super.key, this.initialCategory});

  @override
  State<VocabPoolScreen> createState() => _VocabPoolScreenState();
}

class _VocabPoolScreenState extends State<VocabPoolScreen> {
  String _searchQuery = '';
  late String _selectedCategory;
  bool _showFlashcardMode = false;
  int _flashcardIndex = 0;
  bool _showAnswer = false;
  final TextEditingController _searchController = TextEditingController();
  
  List<VocabWord> _allWords = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.initialCategory ?? 'Tümü';
    _loadWords();
  }

  Future<void> _loadWords() async {
    List<VocabWord> words = List.from(vocabWords);
    
    // YÖKDİL Sağlık'a uyarlanmış 3000 kelimeyi anlık olarak çekiyoruz
    final oxfordWords = await OxfordService.fetchOxford3000();
    
    if (oxfordWords.isNotEmpty) {
      words.removeWhere((w) => w.category.contains('Oxford'));
      words.addAll(oxfordWords);
    }

    // Ekstra sağlık kelimelerini çekiyoruz
    final healthTerms = await HealthService.fetchHealthTerms();
    if (healthTerms.isNotEmpty) {
      for (var term in healthTerms) {
        words.add(VocabWord(
          english: term.english,
          turkish: term.turkish,
          category: term.category,
          example: term.example,
        ));
      }
    }
    
    if (mounted) {
      setState(() {
        _allWords = words;
        _isLoading = false;
      });
    }
  }

  List<VocabWord> get filteredWords {
    return _allWords.where((word) {
      final matchesSearch = _searchQuery.isEmpty ||
          word.english.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          word.turkish.toLowerCase().contains(_searchQuery.toLowerCase());
      final matchesCategory =
          _selectedCategory == 'Tümü' || word.category == _selectedCategory;
      return matchesSearch && matchesCategory;
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
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
                      icon: const Icon(Icons.arrow_back_ios_rounded,
                          color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Kelime Havuzu',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            '${_allWords.length} kelime • ${vocabCategories.length} kategori',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Flashcard toggle
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showFlashcardMode = !_showFlashcardMode;
                          _flashcardIndex = 0;
                          _showAnswer = false;
                        });
                      },
                      icon: Icon(
                        _showFlashcardMode ? Icons.list_rounded : Icons.style_rounded,
                        color: _showFlashcardMode
                            ? AppTheme.primaryCyan
                            : AppTheme.textMuted,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),

              if (_isLoading)
                const Expanded(child: Center(child: CircularProgressIndicator(color: AppTheme.primaryCyan)))
              else if (_showFlashcardMode) ...[
                Expanded(child: _buildFlashcardMode()),
              ] else ...[
                // Search
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.white.withOpacity(0.08)),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (v) => setState(() => _searchQuery = v),
                      style: GoogleFonts.inter(fontSize: 14, color: AppTheme.textPrimary),
                      decoration: InputDecoration(
                        hintText: 'Kelime ara...',
                        hintStyle: GoogleFonts.inter(fontSize: 14, color: AppTheme.textMuted),
                        prefixIcon: const Icon(Icons.search_rounded, color: AppTheme.textMuted, size: 22),
                        suffixIcon: _searchQuery.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  _searchController.clear();
                                  setState(() => _searchQuery = '');
                                },
                                icon: const Icon(Icons.clear_rounded, color: AppTheme.textMuted, size: 20),
                              )
                            : null,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Category chips
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      _buildCatChip('Tümü', '📋'),
                      ...vocabCategories.map((c) => _buildCatChip(c.name, c.icon)),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${filteredWords.length} kelime bulundu',
                    style: GoogleFonts.inter(fontSize: 12, color: AppTheme.textMuted),
                  ),
                ),
                const SizedBox(height: 8),

                // Word list
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: filteredWords.length,
                    itemBuilder: (context, index) {
                      return _buildWordCard(filteredWords[index]);
                    },
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCatChip(String name, String icon) {
    final isSelected = _selectedCategory == name;
    return GestureDetector(
      onTap: () => setState(() => _selectedCategory = name),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? AppTheme.primaryCyan.withOpacity(0.2)
              : Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected
                ? AppTheme.primaryCyan.withOpacity(0.4)
                : Colors.white.withOpacity(0.08),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(icon, style: const TextStyle(fontSize: 13)),
            const SizedBox(width: 4),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? AppTheme.primaryCyan : AppTheme.textMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWordCard(VocabWord word) {
    final catData = vocabCategories.firstWhere(
      (c) => c.name == word.category,
      orElse: () => const VocabCategory(name: '', icon: '', color: '#6366F1', description: ''),
    );
    final color = Color(int.parse('0xFF${catData.color.substring(1)}'));

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withOpacity(0.06)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  word.english,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: color,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '${catData.icon} ${word.category}',
                  style: GoogleFonts.inter(fontSize: 9, color: color, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            word.turkish,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppTheme.textPrimary,
            ),
          ),

          // Synonyms
          if (word.synonyms != null && word.synonyms!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: word.synonyms!.map((s) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.primaryIndigo.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '≈ $s',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.primaryIndigo,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )).toList(),
            ),
          ],

          // Antonyms
          if (word.antonyms != null && word.antonyms!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: word.antonyms!.map((a) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.primaryPink.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '≠ $a',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.primaryPink,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )).toList(),
            ),
          ],

          // Collocations
          if (word.collocations != null && word.collocations!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: word.collocations!.map((c) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.accentAmber.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '🔗 $c',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.accentAmber,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )).toList(),
            ),
          ],

          // Example
          if (word.example != null) ...[
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.03),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '📖 ${word.example}',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: AppTheme.textMuted,
                  fontStyle: FontStyle.italic,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildFlashcardMode() {
    final words = filteredWords;
    if (words.isEmpty) {
      return const Center(child: Text('📚', style: TextStyle(fontSize: 48)));
    }

    final word = words[_flashcardIndex % words.length];
    final catData = vocabCategories.firstWhere(
      (c) => c.name == word.category,
      orElse: () => const VocabCategory(name: '', icon: '', color: '#6366F1', description: ''),
    );
    final color = Color(int.parse('0xFF${catData.color.substring(1)}'));

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Progress
          Text(
            '${_flashcardIndex + 1} / ${words.length}',
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
              value: (_flashcardIndex + 1) / words.length,
              backgroundColor: Colors.white.withOpacity(0.08),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 24),

          // Flashcard
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _showAnswer = !_showAnswer),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutCubic,
                width: double.infinity,
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _showAnswer
                        ? [color.withOpacity(0.12), color.withOpacity(0.04)]
                        : [Colors.white.withOpacity(0.06), Colors.white.withOpacity(0.02)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: _showAnswer
                        ? color.withOpacity(0.3)
                        : Colors.white.withOpacity(0.1),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: (_showAnswer ? color : Colors.black).withOpacity(0.15),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!_showAnswer) ...[
                      Text('🇬🇧', style: const TextStyle(fontSize: 40)),
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
                      Text('🇹🇷', style: const TextStyle(fontSize: 40)),
                      const SizedBox(height: 16),
                      Text(
                        word.turkish,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: color,
                        ),
                      ),
                      if (word.synonyms != null && word.synonyms!.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          alignment: WrapAlignment.center,
                          children: word.synonyms!.map((s) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.06),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '≈ $s',
                              style: GoogleFonts.inter(fontSize: 12, color: AppTheme.textSecondary),
                            ),
                          )).toList(),
                        ),
                      ],
                      if (word.antonyms != null && word.antonyms!.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          alignment: WrapAlignment.center,
                          children: word.antonyms!.map((a) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.06),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '≠ $a',
                              style: GoogleFonts.inter(fontSize: 12, color: AppTheme.primaryPink),
                            ),
                          )).toList(),
                        ),
                      ],
                      if (word.example != null) ...[
                        const SizedBox(height: 16),
                        Text(
                          word.example!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppTheme.textMuted,
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ],
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Navigation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavButton(Icons.arrow_back_ios_rounded, 'Önceki', () {
                setState(() {
                  _flashcardIndex = (_flashcardIndex - 1 + words.length) % words.length;
                  _showAnswer = false;
                });
              }),
              _buildNavButton(Icons.shuffle_rounded, 'Karıştır', () {
                setState(() {
                  _flashcardIndex = (DateTime.now().millisecondsSinceEpoch) % words.length;
                  _showAnswer = false;
                });
              }),
              _buildNavButton(Icons.arrow_forward_ios_rounded, 'Sonraki', () {
                setState(() {
                  _flashcardIndex = (_flashcardIndex + 1) % words.length;
                  _showAnswer = false;
                });
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
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
}
