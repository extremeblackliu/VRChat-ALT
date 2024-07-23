# VRChat-ALT

VRChat Any-Local-Test

tbh this name like ass, 

but you might want debug any map without EAC, this is similar with other game's `Launch (No EAC) `

which you can't play online with friend, but you can literally reverse engineer like normal game.

# Beginning
0. Download the `DirectLocalTest.bat` from repo.
1. Create empty folder and put `DirectLocalTest.bat` in.
2. Edit [Line 24](https://github.com/extremeblackliu/VRCLocalTest/blob/main/DirectLocalTest.bat#L24) to your game folder.
3. Put .vrcw file in folder same as where you put the `DirectLocalTest.bat`.
4. Run `DirectLocalTest.bat`
5. Follow the instruction.

NOTE: Although most of the time two clients will join the same room even if they are not started in the same bat file (roomid is inconsistent). However, there is a chance that two clients will be isolated (roomid is inconsistent), in which case you need to manually specify the roomid

# How it works?
same as what the VRCSDK does, generate 10 length random number and as roomId.
```cs
string randomDigits = Tools.GetRandomDigits(10);
string text4 = "--url=create?roomId=" + randomDigits + "&hidden=true&name=BuildAndRun&url=file:///" + text;
```
then locate the file with prefix `file:///` + path to `.vrcw`
