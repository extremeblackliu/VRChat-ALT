@echo off

echo [---------------------------]
echo [-VRChat-LocalTest-Launcher-]
echo [-Author---Extr3lackLiu-----]
echo [---------------------------]

REM string randomDigits = Tools.GetRandomDigits(10); lol
REM string text4 = "--url=create?roomId=" + randomDigits + "&hidden=true&name=BuildAndRun&url=file:///" + text;
set /a "randomid_a=10000+%random%"
set /a "randomid_b=10000+%random%"
set "randomid=%randomid_a%%randomid_b%"

dir /s /b *.vrcw > temp.txt
set /p path=<temp.txt
del temp.txt

set "GameDir=X:\SteamLibrary\steamapps\common\VRChat\"

start "" /D %GameDir% "%GameDir%VRChat.exe" "--url=create?roomId=%randomid%&hidden=true&name=BuildAndRun&url=file:///%path%" --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging  --no-vr --watch-worlds
