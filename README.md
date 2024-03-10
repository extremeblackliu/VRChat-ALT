# VRCLocalTest
tbh this description like my ass, 

but you might want debug any map without EAC, this is similar with other game's `Launch (No EAC) `

which you can't play online with friend, but you can literally reverse engineer with full experience.

# How to use?
0. Download the `DirectLocalTest.bat` from repo.
1. Create empty folder and put `DirectLocalTest.bat` in.
2. Edit [Line 18](https://github.com/extremeblackliu/VRCLocalTest/blob/main/DirectLocalTest.bat#L18) to your game folder.
3. Put .vrcw file in folder same as where you put the `DirectLocalTest.bat`.
4. Run `DirectLocalTest.bat`

# How it works?
same as what the VRCSDK does, generate 10 length random number and as roomId.
```cs
string randomDigits = Tools.GetRandomDigits(10);
string text4 = "--url=create?roomId=" + randomDigits + "&hidden=true&name=BuildAndRun&url=file:///" + text;
```
then locate the file with prefix `file:///` + path to `.vrcw`
