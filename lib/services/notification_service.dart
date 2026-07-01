import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tzdata;

/// Şükran'a özel: motivasyon + tatlı/flörtöz bildirimler.
/// Her ~3 günde bir sesli bildirim gönderir.
class NotificationService {
  static final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();
  static bool _initialized = false;

  // Tatlı / flörtöz / motive edici mesajlar (Şükran'a özel)
  static const List<Map<String, String>> _messages = [
    {'t': 'Günaydın hanımefendi ☀️', 'b': 'Bugün ne kadar güzelsiniz böyle! Bir de YÖKDİL kelimelerine bakınca büsbütün parlayacaksın 💛'},
    {'t': 'Şükran\'a özel not 💌', 'b': 'Dünyanın en tatlı hemşiresi, en akıllı doktora adayı! Bugün 5 kelime senden korksun 😌'},
    {'t': 'Bir çalışma molası? 🍫', 'b': 'Sen çalışınca kelimeler bile "ay ne hoş" diyor. Hadi bir paragraf çözelim aşkım 📖'},
    {'t': 'Küçük bir hatırlatma 🥰', 'b': 'Gülümsemen 10.000 kelimeden daha değerli ama yine de birkaç tanesini öğrenelim, olur mu? 😘'},
    {'t': 'Bugünün sözü ✨', 'b': '"Success" kelimesinin Türkçesi: senin adın. Hadi bir deneme çözelim güzelim!'},
    {'t': 'Doktora yolundaki Şükran\'ım 🔬', 'b': 'Gün boyu numunelerle titiz çalışıyorsun, bir de akademiye koşuyorsun. YÖKDİL bu azmin yanında çok küçük kalır 💪'},
    {'t': 'Seni düşündüm 💭', 'b': 'Hem bu kadar güzel hem bu kadar çalışkan olmak da ne! YÖKDİL şanslı ki seninle uğraşıyor 😍'},
    {'t': 'Minik mola bitti mi? ⏰', 'b': 'Kelime kartların seni özledi hanımefendi. Bir bakış atsan gözleri parlar 🥺'},
    {'t': 'Motivasyon 🔥', 'b': 'Zor bir paragraf mı? Sen daha zorsun canım. O soruya haddini bildir!'},
    {'t': 'Akşam sözü 🌙', 'b': 'Bugün de harikaydın. Uyumadan bir kelime tekrarı yaparsan rüyanda İngilizce konuşursun 😴💕'},
    {'t': 'Sadece hatırlatmak istedim 💖', 'b': 'Sen bu dünyanın en tatlı çalışkanısın. Bugün hangi konuyu fethediyoruz?'},
    {'t': 'Kraliçeye çağrı 👑', 'b': 'Majesteleri, tebaanız kelimeler emirlerinizi bekliyor. Bir quiz çözelim mi?'},
    {'t': 'Akademisyen Şükran 🎓', 'b': 'Doktora tezinin en güzel bölümü senin azmin olacak. Bugün YÖKDİL\'e bir adım daha yaklaş 💛'},
    {'t': 'Numune arası mı? 🧪', 'b': 'Laboratuvarda ne kadar titizsen kelimelerde de o kadar başarılısın. İki kelime öğren, gülümsemen bin katına çıksın 😊'},
  ];

  static Future<void> init() async {
    if (_initialized) return;
    tzdata.initializeTimeZones();
    try {
      tz.setLocalLocation(tz.getLocation('Europe/Istanbul'));
    } catch (_) {}

    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosInit = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    const settings =
        InitializationSettings(android: androidInit, iOS: iosInit);
    await _plugin.initialize(settings: settings);
    _initialized = true;
  }

  /// Bildirim izni ister (Android 13+ ve iOS).
  static Future<bool> requestPermissions() async {
    await init();
    bool granted = true;

    final android = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (android != null) {
      final res = await android.requestNotificationsPermission();
      granted = res ?? true;
    }

    final ios = _plugin.resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>();
    if (ios != null) {
      final res = await ios.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      granted = res ?? true;
    }
    return granted;
  }

  static const AndroidNotificationDetails _androidDetails =
      AndroidNotificationDetails(
    'sukran_love_channel',
    'Şükran\'a Özel',
    channelDescription: 'Motivasyon ve tatlı mesajlar',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,
  );

  static const NotificationDetails _details = NotificationDetails(
    android: _androidDetails,
    iOS: DarwinNotificationDetails(presentSound: true, presentAlert: true),
  );

  /// Önümüzdeki ~2 ay için 3 günde bir tatlı mesaj planlar (saat 10:00).
  static Future<void> scheduleSweetMessages() async {
    await init();
    await _plugin.cancelAll();

    final rnd = Random();
    // 20 bildirim, 3 günde bir → yaklaşık 2 ay
    for (int i = 1; i <= 20; i++) {
      final msg = _messages[rnd.nextInt(_messages.length)];
      final when = _nextSlot(daysAhead: i * 3);
      try {
        await _plugin.zonedSchedule(
          id: 1000 + i,
          title: msg['t'],
          body: msg['b'],
          scheduledDate: when,
          notificationDetails: _details,
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        );
      } catch (_) {
        // Bazı cihazlarda tam zamanlı alarm izni yoksa sessizce geç
      }
    }
  }

  /// Hemen bir tatlı mesaj gösterir (test/hoş geldin için).
  static Future<void> showInstantSweetMessage() async {
    await init();
    final msg = _messages[Random().nextInt(_messages.length)];
    await _plugin.show(
      id: 999,
      title: msg['t'],
      body: msg['b'],
      notificationDetails: _details,
    );
  }

  static tz.TZDateTime _nextSlot({required int daysAhead}) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduled = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      10, // saat 10:00
      0,
    ).add(Duration(days: daysAhead));
    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }
    return scheduled;
  }
}
