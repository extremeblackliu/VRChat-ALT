@echo off

echo [---------------------------]
echo [-VRChat-LocalTest-Launcher-]
echo [-Author---Extr3lackLiu-----]
echo [---------------------------]

REM string randomDigits = Tools.GetRandomDigits(10);
REM string text4 = "--url=create?roomId=" + randomDigits + "&hidden=true&name=BuildAndRun&url=file:///" + text;
set /a "randomid_a=10000+%random%"
set /a "randomid_b=10000+%random%"
set "randomid=%randomid_a%%randomid_b%"

set /p customid=Custom roomId(10 bits)(leave blank = random):

if not "%customid%"=="" (
    set "randomid=%customid%"
)

dir /s /b *.vrcw > temp.txt
set /p path=<temp.txt
del temp.txt

set "GameDir=F:\SteamLibrary\steamapps\common\VRChat\"

set /p ClientCount=Amount of Clients to create(leave blank = 1):

if "%ClientCount%"=="" set ClientCount=1
for /l %%i in (1, 1, %ClientCount%) do (
	start "" /D %GameDir% "%GameDir%VRChat.exe" "--url=create?roomId=%randomid%&hidden=true&name=BuildAndRun&url=file:///%path%" --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging --watch-worlds
)
