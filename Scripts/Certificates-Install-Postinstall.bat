rem Запускать файл с правами администратора

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set Dest_DIR=c:\Util

Rem Execute Changed Script

%SystemRoot%\System32\cscript.exe //NoLogo %Dest_DIR%\Certificates-install.vbs


