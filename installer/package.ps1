$ErrorActionPreference = "Stop"

$workspace = "C:\Users\GAMER\Desktop\sukoyok"
$installerDir = "$workspace\installer"
$buildWebDir = "$workspace\build\web"
$outDir = "$workspace\build\windows_web"

Write-Host "Creating output directory..."
if (Test-Path $outDir) {
    Remove-Item -Recurse -Force $outDir
}
New-Item -ItemType Directory -Path $outDir | Out-Null

Write-Host "Compiling Dart launcher..."
# Compile dart launcher to exe
dart compile exe "$installerDir\launcher.dart" -o "$outDir\yokdil_saglik.exe"

Write-Host "Copying web build..."
# Copy the web folder
Copy-Item -Path $buildWebDir -Destination "$outDir\web" -Recurse

Write-Host "Done packaging to $outDir"
