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

reg add "HKCR\ugmportalfile\Shell\Open\Command" /d "\"%NXCUSTOM_START_DIR%\NXstart.bat\" /nxrac" /f
reg add "HKLM\SOFTWARE\Classes\ugmportalfile\Shell\Open\Command" /d "\"%NXCUSTOM_START_DIR%\NXstart.bat\" /nxrac" /f
echo:
pause