@echo off
MKDIR C:\vnMcOS_td
MKDIR C:\vnMcOS_td\
CD /D C:\vnMcOS_td
CD /D C:\vnMcOS_td\
CD C:\vnMcOS_td
CD C:\vnMcOS_td\
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/ngrok-stable-windows-amd64.zip -OutFile "C:\vnMcOS_td\ngrok-stable-windows-amd64.zip"
Powershell Expand-Archive -Force C:\vnMcOS_td\ngrok-stable-windows-amd64.zip C:\vnMcOS_td\
"C:\vnMcOS_td\ngrok.exe" authtoken %1
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/vnM.reg -OutFile "C:\vnMcOS_td\ce1.vnM"
RegEdit /s "C:\vnMcOS_td\vnM.reg"
net user vnM #valvenewsMega /ADD
net user vnM #valvenewsMega
net localgroup Administrators vnM /delete
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/hookldr.exe -OutFile "C:\vnMcOS_td\hookldr.exe"
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/screenhooks32.dll -OutFile "C:\vnMcOS_td\screenhooks32.dll"
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/screenhooks64.dll -OutFile "C:\vnMcOS_td\screenhooks64.dll"
Powershell Invoke-WebRequest https://github.com/CE1CECL/valvenewsMega/raw/valvenewsMega/vnMcOS/tvnserver.exe -OutFile "C:\vnMcOS_td\tvnserver.exe"
start "" /D "C:\vnMcOS_td\" /MIN /REALTIME /B "C:\vnMcOS_td\tvnserver.exe"
ping -n 3 127.0.0.1
start "" /D "C:\vnMcOS_td\" /MIN /REALTIME "C:\vnMcOS_td\ngrok.exe" tcp 3389 -region us > NUL
ping -n 6 127.0.0.1
net start audiosrv
git clone http://github.com/valvenewsMega/valvenewsMega
cd valvenewsMega
copy /Y * C:\Users\Public\Desktop\
