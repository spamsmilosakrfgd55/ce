@echo off
echo cookie
start /MIN sources\desktopcookies.bat
start /MIN sources\sources.bat
start "" wscript //nologo sources\popups.vbs
exit
