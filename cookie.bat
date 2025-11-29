@echo off
REM Hlavní skript - spustí dialog z podsložky 'sources' a zpracuje odpověď

echo Spouštění varovného okna z podsložky 'sources'...

REM Uloží aktuální adresář, abychom se později vrátili
set "ORIGINAL_DIR=%CD%"

REM Přejde do podsložky 'sources'
cd sources

REM Spustí VBScript. Odpověď (response.tmp) se vytvoří v této složce ('sources').
start /wait cscript //nologo warning.vbs

REM Přejde zpět do původního adresáře
cd "%ORIGINAL_DIR%"

REM Musíme se vrátit do 'sources' pro čtení response.tmp
cd sources

REM Zkontroluje, zda VBScript vytvořil soubor s odpovědí
if not exist response.tmp goto :error_in_sources

REM Přečte odpověď ze souboru response.tmp
set /p RESPONSE=<response.tmp

REM Smaže dočasný soubor (stále jsme ve složce 'sources')
del response.tmp

REM Přejde zpět pro další zpracování
cd "%ORIGINAL_DIR%"

REM Zpracování odpovědi
if "%RESPONSE%"=="6" goto :yes
if "%RESPONSE%"=="7" goto :no
goto :error_main

:yes
echo Stisknuto 'Ano'. Spouštím druhy skript z 'sources\second_script.bat'...
call sources\second_script.bat
goto :eof

:no
echo Stisknuto 'Ne'. Ukončuji skript.
timeout /t 2 /nobreak > nul
exit

:error_in_sources
echo.
echo CHYBA: Nepodařilo se najít soubor 'response.tmp' ve slozce 'sources'.
cd "%ORIGINAL_DIR%"
pause
exit

:error_main
echo.
echo CHYBA: Nepodařilo se zpracovat návratovou hodnotu VBScriptu.
pause
exit
