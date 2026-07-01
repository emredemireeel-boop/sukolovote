import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';

class PdfViewerScreen extends StatefulWidget {
  final String title;
  final String pdfPath;

  const PdfViewerScreen({
    super.key,
    required this.title,
    required this.pdfPath,
  });

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  String? _loadError;

  bool get _isNetwork =>
      widget.pdfPath.startsWith('http://') ||
      widget.pdfPath.startsWith('https://');

  Widget _buildViewer() {
    if (_loadError != null) {
      return _buildError();
    }
    void onFailed(PdfDocumentLoadFailedDetails details) {
      if (mounted) {
        setState(() => _loadError = details.description);
      }
    }

    if (_isNetwork) {
      return SfPdfViewer.network(
        widget.pdfPath,
        onDocumentLoadFailed: onFailed,
      );
    }
    return SfPdfViewer.asset(
      widget.pdfPath,
      onDocumentLoadFailed: onFailed,
    );
  }

  Widget _buildError() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.picture_as_pdf_rounded,
                size: 64, color: Colors.redAccent),
            const SizedBox(height: 16),
            Text(
              'PDF yüklenemedi',
              style: GoogleFonts.outfit(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Belge bulunamadı veya açılamadı.',
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openExternally() async {
    if (!_isNetwork) return;
    final uri = Uri.parse(widget.pdfPath);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppTheme.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.title,
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        actions: [
          if (_isNetwork)
            IconButton(
              icon: const Icon(Icons.open_in_new_rounded,
                  color: AppTheme.textPrimary),
              onPressed: _openExternally,
            ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: _buildViewer(),
          ),
        ),
      ),
    );
  }
}
