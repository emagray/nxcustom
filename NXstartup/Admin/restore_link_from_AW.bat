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
call NXstart.bat :set_nx_paths
call NXstart.bat :set_valid_application_versions

set NXCUSTOM_APPLICATION_VERSION=
if "%1" neq "" (
	set NXCUSTOM_APPLICATION_VERSION=%1
)

echo Installed NX versions found:
for %%a in (%NXCUSTOM_NX_PATHS%) do (
	for /f "tokens=1,2,* delims=:" %%b in (%%a) do (
		echo %%b
	)
)
echo:

if not defined NXCUSTOM_APPLICATION_VERSION (
	set /p NXCUSTOM_APPLICATION_VERSION=Which version would you like to restore to?: 
)

call NXstart.bat :get_highest_dot_from_compat %NXCUSTOM_APPLICATION_VERSION% NXCUSTOM_NX_DOT_VERSION
call NXstart.bat :set_UGII_BASE_DIR

reg add "HKCR\NXTCXML File\shell\open\command" /d "\"%UGII_BASE_DIR%\UGMANAGER\startNXFromAW.bat\" \"%%1\"" /f
reg add "HKLM\SOFTWARE\Classes\NXTCXML File\shell\open\command" /d "\"%UGII_BASE_DIR%\UGMANAGER\startNXFromAW.bat\" \"%%1\"" /f
echo:
pause