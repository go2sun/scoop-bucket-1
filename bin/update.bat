@echo off
setlocal

for /f %%i in ('scoop which scoop') do (
    set CHECKVER=%%~dpicheckver.ps1
    set FORMAT=%%~dpiformatjson.ps1
)
for /f %%i in ('scoop which pwsh') do set PWSH=%%i
for %%i in (%0) do set DIR=%%~dpi..

%PWSH% -f %CHECKVER% -dir %DIR% %* -u
%PWSH% -f %FORMAT% -dir %DIR% %*