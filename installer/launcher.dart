import 'dart:io';
import 'dart:isolate';

/// Şüko YÖKDİL Desktop Launcher
/// Flutter web build'ini yerelde çalıştırıp tarayıcıda açar.
void main() async {
  // Web dosyalarının bulunduğu dizini bul
  final exeDir = File(Platform.resolvedExecutable).parent.path;
  final webDir = Directory('$exeDir/web');

  if (!webDir.existsSync()) {
    print('HATA: web/ klasörü bulunamadı!');
    print('Aranan konum: ${webDir.path}');
    exit(1);
  }

  // Boş port bul
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  final port = server.port;
  print('Şüko YÖKDİL başlatılıyor... http://localhost:$port');

  // Statik dosya sunucusu
  server.listen((HttpRequest request) async {
    var path = request.uri.path;
    if (path == '/') path = '/index.html';

    final file = File('${webDir.path}$path');
    if (await file.exists()) {
      final ext = path.split('.').last.toLowerCase();
      final contentType = _mimeType(ext);
      request.response.headers.set('Content-Type', contentType);
      request.response.headers.set('Cache-Control', 'no-cache');
      await request.response.addStream(file.openRead());
      await request.response.close();
    } else {
      // SPA fallback: tüm route'ları index.html'e yönlendir
      final indexFile = File('${webDir.path}/index.html');
      if (await indexFile.exists()) {
        request.response.headers.set('Content-Type', 'text/html');
        await request.response.addStream(indexFile.openRead());
        await request.response.close();
      } else {
        request.response.statusCode = 404;
        request.response.write('404 Not Found');
        await request.response.close();
      }
    }
  });

  // Tarayıcıyı app modunda aç (Chrome/Edge)
  final url = 'http://localhost:$port';
  
  // Önce Edge'i dene (her Windows 10/11'de var)
  try {
    final edgePath = _findEdge();
    if (edgePath != null) {
      await Process.start(edgePath, [
        '--app=$url',
        '--window-size=1280,800',
        '--disable-extensions',
        '--new-window',
      ]);
    } else {
      // Edge yoksa varsayılan tarayıcıyla aç
      await Process.start('cmd', ['/c', 'start', url]);
    }
  } catch (e) {
    // Herhangi bir hata olursa varsayılan tarayıcıyla aç
    await Process.start('cmd', ['/c', 'start', url]);
  }

  print('✅ Uygulama açıldı!');
  print('Kapatmak için bu pencereyi kapatın veya Ctrl+C yapın.');

  // Ctrl+C veya pencere kapanana kadar bekle
  ProcessSignal.sigint.watch().listen((_) {
    print('\nŞüko YÖKDİL kapatılıyor...');
    server.close();
    exit(0);
  });
}

String? _findEdge() {
  final paths = [
    'C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe',
    'C:\\Program Files\\Microsoft\\Edge\\Application\\msedge.exe',
  ];
  for (var p in paths) {
    if (File(p).existsSync()) return p;
  }
  return null;
}

String _mimeType(String ext) {
  switch (ext) {
    case 'html': return 'text/html; charset=utf-8';
    case 'js': return 'application/javascript';
    case 'css': return 'text/css';
    case 'json': return 'application/json';
    case 'png': return 'image/png';
    case 'jpg': case 'jpeg': return 'image/jpeg';
    case 'gif': return 'image/gif';
    case 'svg': return 'image/svg+xml';
    case 'ico': return 'image/x-icon';
    case 'woff': return 'font/woff';
    case 'woff2': return 'font/woff2';
    case 'ttf': return 'font/ttf';
    case 'otf': return 'font/otf';
    case 'wasm': return 'application/wasm';
    case 'map': return 'application/json';
    case 'mp3': return 'audio/mpeg';
    default: return 'application/octet-stream';
  }
}
