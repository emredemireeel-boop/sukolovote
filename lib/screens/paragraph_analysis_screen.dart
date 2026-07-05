import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/paragraph_analysis_data.dart';
import '../widgets/glass_card.dart';

class ParagraphAnalysisScreen extends StatefulWidget {
  const ParagraphAnalysisScreen({super.key});

  @override
  State<ParagraphAnalysisScreen> createState() => _ParagraphAnalysisScreenState();
}

class _ParagraphAnalysisScreenState extends State<ParagraphAnalysisScreen> {
  int _currentIndex = 0;
  bool _showTurkish = false;
  bool _showHighlights = true;

  @override
  Widget build(BuildContext context) {
    final passage = paragraphAnalysisList[_currentIndex];

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
                      icon: const Icon(Icons.arrow_back_ios_rounded, color: AppTheme.textPrimary, size: 22),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paragraf Analizi',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Metni anatomisine ayır',
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

              // Controls
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildToggleButton(
                        'Çeviriler',
                        Icons.translate_rounded,
                        _showTurkish,
                        () => setState(() => _showTurkish = !_showTurkish),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildToggleButton(
                        'Önemli Kelimeler',
                        Icons.highlight_rounded,
                        _showHighlights,
                        () => setState(() => _showHighlights = !_showHighlights),
                      ),
                    ),
                  ],
                ),
              ),

              // Passage List
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: paragraphAnalysisList.length,
                  itemBuilder: (context, index) {
                    final isSelected = _currentIndex == index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: GestureDetector(
                        onTap: () => setState(() => _currentIndex = index),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: isSelected ? AppTheme.primaryIndigo.withOpacity(0.2) : Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isSelected ? AppTheme.primaryIndigo.withOpacity(0.5) : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Paragraf ${index + 1}',
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                                color: isSelected ? const Color(0xFF818CF8) : AppTheme.textSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Content
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        passage.title,
                        style: GoogleFonts.outfit(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Cümle Cümle Analiz
                      ...List.generate(passage.sentences.length, (index) {
                        final sentence = passage.sentences[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: const EdgeInsets.only(top: 2, right: 12),
                                    decoration: BoxDecoration(
                                      color: AppTheme.primaryIndigo.withOpacity(0.2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${index + 1}',
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF818CF8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: _buildSentence(sentence),
                                  ),
                                ],
                              ),
                              if (sentence.isTopicSentence)
                                Padding(
                                  padding: const EdgeInsets.only(left: 36, top: 8),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: AppTheme.accentEmerald.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.stars_rounded, size: 14, color: AppTheme.accentEmerald),
                                        const SizedBox(width: 4),
                                        Text(
                                          'Topic Sentence (Ana Fikir)',
                                          style: GoogleFonts.inter(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: AppTheme.accentEmerald,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (_showTurkish)
                                Padding(
                                  padding: const EdgeInsets.only(left: 36, top: 8),
                                  child: Text(
                                    sentence.turkish,
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: AppTheme.textSecondary,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              if (_showHighlights && sentence.highlights.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(left: 36, top: 12),
                                  child: Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: sentence.highlights.map((h) => _buildHighlightChip(h)).toList(),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }),
                      
                      const SizedBox(height: 16),
                      // Paragraf Özeti
                      GlassCard(
                        padding: const EdgeInsets.all(20),
                        borderColor: AppTheme.primaryCyan.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.summarize_rounded, color: AppTheme.primaryCyan, size: 20),
                                const SizedBox(width: 8),
                                Text(
                                  'Paragrafın Özeti',
                                  style: GoogleFonts.outfit(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              passage.summaryTr,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: AppTheme.textSecondary,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
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

  Widget _buildToggleButton(String title, IconData icon, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isActive ? AppTheme.primaryIndigo : Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 16, color: isActive ? Colors.white : AppTheme.textMuted),
            const SizedBox(width: 6),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                color: isActive ? Colors.white : AppTheme.textMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSentence(SentenceAnalysis sentence) {
    if (!_showHighlights) {
      return Text(
        sentence.english,
        style: GoogleFonts.inter(
          fontSize: 16,
          height: 1.6,
          color: Colors.white,
        ),
      );
    }

    // Highlighting logic
    List<TextSpan> spans = [];
    String text = sentence.english;
    
    // Sort highlights by word length (descending) so longer words match first
    var sortedHighlights = List<WordHighlight>.from(sentence.highlights);
    sortedHighlights.sort((a, b) => b.word.length.compareTo(a.word.length));

    int currentIndex = 0;
    while (currentIndex < text.length) {
      bool matched = false;
      for (var h in sortedHighlights) {
        // Find if word matches at currentIndex
        if (text.startsWith(h.word, currentIndex) || 
            text.startsWith(h.word.toLowerCase(), currentIndex) ||
            text.startsWith(h.word[0].toUpperCase() + h.word.substring(1), currentIndex)) {
          
          spans.add(TextSpan(
            text: text.substring(currentIndex, currentIndex + h.word.length),
            style: const TextStyle(
              color: Color(0xFF818CF8), // Highlight color
              fontWeight: FontWeight.w700,
            ),
          ));
          currentIndex += h.word.length;
          matched = true;
          break;
        }
      }

      if (!matched) {
        spans.add(TextSpan(
          text: text[currentIndex],
          style: const TextStyle(color: Colors.white),
        ));
        currentIndex++;
      }
    }

    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(
          fontSize: 16,
          height: 1.6,
        ),
        children: spans,
      ),
    );
  }

  Widget _buildHighlightChip(WordHighlight highlight) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF818CF8).withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF818CF8).withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                highlight.word,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF818CF8),
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  highlight.type,
                  style: GoogleFonts.inter(
                    fontSize: 9,
                    color: AppTheme.textMuted,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            highlight.meaning,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
