@echo off
echo ====================================
echo YÖKDİL Saglik - Proje Kurulumu
echo ====================================
echo.

echo [1/3] Windows platformu ekleniyor...
flutter create --platforms windows .

echo.
echo [2/3] Bagimliliklar yukleniyor...
flutter pub get

echo.
echo [3/3] Uygulama baslatiliyor...
flutter run -d windows

echo.
echo ====================================
echo Kurulum tamamlandi!
echo ====================================
pause
