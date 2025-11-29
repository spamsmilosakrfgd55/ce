@echo off
REM Hlavní skript - pouze spustí VBScript a okamžitě se ukončí.
REM Veškerou logiku obstarává VBScript.

echo Spouštění varovného okna z podsložky 'sources'.

REM Spustí VBScript z podsložky 'sources'.
REM Používá 'start "" cscript ...' aby se spustil bez čekání.
start "" cscript //nologo sources\warning.vbs

REM Hlavní skript končí okamžitě, než VBScript dokončí svou práci.
exit
