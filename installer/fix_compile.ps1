$ErrorActionPreference = "Stop"

Write-Host "Creating temp directory for launcher..."
$tempDir = "C:\Users\GAMER\Desktop\launcher_temp"
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

Write-Host "Copying launcher.dart..."
Copy-Item -Path "C:\Users\GAMER\Desktop\sukoyok\installer\launcher.dart" -Destination "$tempDir\launcher.dart"

Write-Host "Compiling Dart Launcher (this will take a few seconds)..."
Set-Location $tempDir
dart compile exe launcher.dart -o "C:\Users\GAMER\Desktop\sukoyok\build\windows_web\yokdil_saglik.exe"

Write-Host "Cleaning up temp folder..."
Set-Location "C:\Users\GAMER\Desktop"
Remove-Item -Recurse -Force $tempDir

Write-Host "Re-compiling the installer..."
& "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" "C:\Users\GAMER\Desktop\sukoyok\installer\suko_yokdil_setup.iss"

Write-Host "All done! Setup file created at C:\Users\GAMER\Desktop\SukoYOKDIL_Setup.exe"
