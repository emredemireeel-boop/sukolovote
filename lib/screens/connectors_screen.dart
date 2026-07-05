import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../data/connectors_data.dart';
import 'quiz_screen.dart';

class ConnectorsScreen extends StatefulWidget {
  const ConnectorsScreen({super.key});

  @override
  State<ConnectorsScreen> createState() => _ConnectorsScreenState();
}

class _ConnectorsScreenState extends State<ConnectorsScreen> {
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  static const List<Color> _categoryColors = [
    Color(0xFFF43F5E), // Zıtlık - rose
    Color(0xFF0891B2), // Sebep-Sonuç - cyan
    Color(0xFF6366F1), // Koşul - indigo
    Color(0xFF10B981), // Ekleme - emerald
    Color(0xFFF59E0B), // Amaç - amber
    Color(0xFF8B5CF6), // Zaman - purple
    Color(0xFF0F766E), // Karşılaştırma - teal
    Color(0xFFEC4899), // Açıklama - pink
    Color(0xFF2563EB), // Sonuç - blue
  ];

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
                            'Bağlaç Havuzu',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            '${connectorCategories.fold<int>(0, (sum, c) => sum + c.connectors.length)} bağlaç • 9 kategori',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppTheme.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFEC4899), Color(0xFFF43F5E)],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const QuizScreen(questionTypeId: 'conjunctions_grammar')));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.quiz_rounded, color: Colors.white, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  'Soru Çöz',
                                  style: GoogleFonts.outfit(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

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
                      hintText: 'Bağlaç ara... (ör: although, despite)',
                      hintStyle: GoogleFonts.inter(fontSize: 14, color: AppTheme.textMuted),
                      prefixIcon: const Icon(Icons.search_rounded, color: AppTheme.textMuted, size: 22),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Content
              Expanded(
                child: _searchQuery.isEmpty
                    ? _buildCategoryList()
                    : _buildSearchResults(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: connectorCategories.length,
      itemBuilder: (context, index) {
        final category = connectorCategories[index];
        final color = _categoryColors[index % _categoryColors.length];
        return _buildCategoryCard(category, color);
      },
    );
  }

  Widget _buildSearchResults() {
    final results = <MapEntry<ConnectorItem, int>>[];
    for (var i = 0; i < connectorCategories.length; i++) {
      for (var conn in connectorCategories[i].connectors) {
        if (conn.english.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            conn.turkish.toLowerCase().contains(_searchQuery.toLowerCase())) {
          results.add(MapEntry(conn, i));
        }
      }
    }

    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('🔍', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 12),
            Text(
              'Sonuç bulunamadı',
              style: GoogleFonts.inter(fontSize: 16, color: AppTheme.textMuted),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final conn = results[index].key;
        final catIndex = results[index].value;
        return _buildConnectorTile(conn, _categoryColors[catIndex % _categoryColors.length]);
      },
    );
  }

  Widget _buildCategoryCard(ConnectorCategory category, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: AppTheme.glassDecoration(opacity: 0.06),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.2)),
            ),
            child: Center(
              child: Text(
                '${category.connectors.length}',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
            ),
          ),
          title: Text(
            category.title,
            style: GoogleFonts.outfit(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          subtitle: Text(
            category.description,
            style: GoogleFonts.inter(fontSize: 11, color: AppTheme.textMuted),
          ),
          iconColor: AppTheme.textMuted,
          collapsedIconColor: AppTheme.textMuted,
          children: category.connectors
              .map((conn) => _buildConnectorTile(conn, color))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildConnectorTile(ConnectorItem conn, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withOpacity(0.04),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // English
          Text(
            conn.english,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          // Turkish
          Text(
            conn.turkish,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          // Usage
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.04),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.rule_rounded, size: 14, color: AppTheme.primaryCyan),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    conn.usage,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppTheme.primaryCyan,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Example
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.03),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '📖 ${conn.example}',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppTheme.textSecondary,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          // Note
          if (conn.note != null) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppTheme.accentAmber.withOpacity(0.08),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppTheme.accentAmber.withOpacity(0.15)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('⚠️', style: TextStyle(fontSize: 12)),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      conn.note!,
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        color: AppTheme.accentAmber,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
