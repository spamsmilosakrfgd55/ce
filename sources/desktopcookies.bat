@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
REM %~dp0 je cesta ke složce, kde se skript nachází
SET ScriptDir=%~dp0
SET SourceFile="%ScriptDir%sources\cookie.jpg"
SET DesktopPath=%USERPROFILE%\Desktop
SET CopyCount=300

ECHO.
ECHO Kontrola zdrojoveho souboru: %SourceFile%

REM Kontrola existence souboru
IF NOT EXIST %SourceFile% (
    ECHO Chyba: Soubor 'sources\cookie.jpg' nebyl nalezen ve stejne slozce jako tento skript.
    PAUSE
    EXIT /B 1
)

ECHO Zahajuji kopirovani %CopyCount% souboru na Plochu...
ECHO.

REM Smycka od 1 do 300
FOR /L %%i IN (1,1,%CopyCount%) DO (
    SET NewFileName=cookie_ozdoba_%%i.jpg
    COPY %SourceFile% "%DesktopPath%\!NewFileName!" >NUL
    
    REM Zobrazí stav každých 50 kopií
    SET /A Remainder=%%i %% 50
    IF !Remainder! EQU 0 ECHO Vytvoreno %%i kopii...
)

ECHO.
ECHO --------------------------------------------------------
ECHO ✅ Kopirovani DOKONCENO. Vytvoreno 300 souboru na Plos.
ECHO 🔴 JAK ODSTRANIT: Pro rychlé odstranění spusťte: DEL /F /Q "%DesktopPath%\cookie_ozdoba_*.jpg"
ECHO --------------------------------------------------------
ENDLOCAL
PAUSE
