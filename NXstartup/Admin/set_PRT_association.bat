@echo off

net session >nul 2>&1 || (
	color 4f
	echo Must run as Administrator!
	echo:
	pause
	exit /b
)

cd /d %~dp0
call ..\NXstart.bat :set_locations

reg add "HKCR\NXPartFile\shell\open\command" /d "\"%NXCUSTOM_START_DIR%\NXstart.bat\" /openfile \"%%1\"" /f
reg add "HKLM\SOFTWARE\Classes\NXPartFile\shell\open\command" /d "\"%NXCUSTOM_START_DIR%\NXstart.bat\" /openfile \"%%1\"" /f
echo:
pause