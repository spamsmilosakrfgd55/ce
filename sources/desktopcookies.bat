@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
REM %~dp0 je cesta ke složce, kde se skript nachází
SET ScriptDir=%~dp0
SET SourceFile="sources\cookie.png"
SET DesktopPath=%USERPROFILE%\Desktop
SET CopyCount=10000

ECHO.
ECHO Kontrola zdrojoveho souboru: %SourceFile%

REM Kontrola existence souboru
IF NOT EXIST %SourceFile% (
    ECHO Chyba: Soubor 'sources\cookie.png' nebyl nalezen ve stejne slozce jako tento skript.
    PAUSE
    EXIT /B 1
)

ECHO Zahajuji kopirovani %CopyCount% souboru na Plochu...
ECHO.

REM Smycka od 1 do 300
FOR /L %%i IN (1,1,%CopyCount%) DO (
    SET NewFileName=cookie_exe_%%i.png
    COPY %SourceFile% "%DesktopPath%\!NewFileName!" >NUL
    
    REM Zobrazí stav každých 50 kopií
    SET /A Remainder=%%i %% 50
    IF !Remainder! EQU 0 ECHO Vytvoreno %%i kopii...
)

ECHO.

ENDLOCAL
exit
