; Şüko YÖKDİL - Inno Setup Installer Script
; Bu script ile .exe installer oluşturulur.

#define MyAppName "Şüko YÖKDİL"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Şüko YÖKDİL"
#define MyAppExeName "yokdil_saglik.exe"

[Setup]
AppId={{B3A7F2E1-8C4D-4F6E-9A1B-5D2E7F8C3A9B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\SukoYOKDIL
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\Users\GAMER\Desktop
OutputBaseFilename=SukoYOKDIL_Setup
SetupIconFile=C:\Users\GAMER\Desktop\sukoyok\windows\runner\resources\app_icon.ico
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=lowest

[Languages]
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[Tasks]
Name: "desktopicon"; Description: "Masaüstüne kısayol oluştur"; GroupDescription: "Ek görevler:"; Flags: unchecked

[Files]
; Ana uygulama ve tüm bağımlılıklar
Source: "C:\Users\GAMER\Desktop\sukoyok\build\windows_web\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName} Kaldır"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Şüko YÖKDİL'i Başlat"; Flags: nowait postinstall skipifsilent
