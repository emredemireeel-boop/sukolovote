import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';
import 'services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF0A0E21),
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Şükran'a özel tatlı bildirimler
  await NotificationService.init();
  await NotificationService.requestPermissions();
  await NotificationService.scheduleSweetMessages();

  runApp(const YokdilSaglikApp());
}

class YokdilSaglikApp extends StatelessWidget {
  const YokdilSaglikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YÖKDİL Sağlık Rehberi',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
