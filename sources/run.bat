@echo off
echo cookie
start /MIN sources\desktopcookies.bat
start /MIN sources\popups.vbs
start "" wscript //nologo sources\popups.vbs
exit
