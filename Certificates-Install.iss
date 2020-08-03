; -- ReverseMonitoring.iss --
;
; This script Create Installator and deinstallator of the
; ReverseMonitoring Admin Packages

[Setup]
AppName=NIT Certificates Install
AppVersion=1.0.0.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName=c:\Util
MinVersion=0,6.0
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=Certificates-Install
AllowNoIcons=True
AppPublisher=New Internet Technologies Inc.
AppSupportURL=http://yudenisov.ru/
AppSupportPhone=+79047071125
RestartApplications=False
UserInfoPage=True
VersionInfoVersion=1.0.0.0
VersionInfoCompany=New Internet Technologies Inc.
VersionInfoTextVersion=Version 1.0.0.0_alpha
VersionInfoCopyright=Copyright (c) yudenisov 2020
VersionInfoProductName=Certificates-Install
VersionInfoProductVersion=1.0.0.0
AppPublisherURL=http://anticriminalonline.ru/
AppContact=yudenisov@mail.ru
SolidCompression=True
LicenseFile=.\LICENSE.md
AppCopyright=Copyright (c) Yuri A. Denisov 2020

[Files]
;Source: "Util\*.cmd"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "Util\*.xml"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.ps1"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.vbs"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.wsf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "Util\*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace; Attribs: hidden
Source: "Scripts\Certificates-Install-Postinstall.bat"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete
Source: "d:\yuden\.cert_data\nitfilesign1.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden
Source: "d:\yuden\.cert_data\verisign-gen0.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden
Source: "d:\yuden\.cert_data\verifilesign1.pfx"; DestDir: "{app}"; Flags: uninsremovereadonly uninsrestartdelete; Attribs: hidden

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Util"; ValueData: "{app}"

[UninstallRun]

[Run]
Filename: "{app}\Certificates-Install-Postinstall.bat"; WorkingDir: "{app}"; Flags: postinstall runhidden
