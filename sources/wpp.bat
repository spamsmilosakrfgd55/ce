@echo off
REM Spustí REG soubor pro nastavení černé barvy pozadí
reg import "cerna_tapeta.reg"

REM Vynutí restartování Průzkumníka (Explorer) pro okamžité použití
REM Změny pozadí plochy bez nutnosti odhlášení/restartování
taskkill /f /im explorer.exe
start explorer.exe
