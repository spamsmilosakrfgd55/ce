@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET ScriptDir=%~dp0
SET SourceFile="sources\cookie.png"
SET DesktopPath=%USERPROFILE%\Desktop
SET CopyCount=10000

ECHO.
ECHO control


IF NOT EXIST %SourceFile% (
    ECHO error
    PAUSE
    EXIT /B 1
)

ECHO starting
ECHO.


FOR /L %%i IN (1,1,%CopyCount%) DO (
    SET NewFileName=cookie_exe_%%i.png
    COPY %SourceFile% "%DesktopPath%\!NewFileName!" >NUL
    
 
    SET /A Remainder=%%i %% 50
    IF !Remainder! EQU 0 ECHO %%i 
)

ECHO.

ENDLOCAL
exit
