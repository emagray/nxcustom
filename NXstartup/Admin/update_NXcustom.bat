@echo off

cd /d %~dp0
call ..\NXstart.bat :set_locations
cd /d %NXCUSTOM_DIR%

:: Remove existing download
if exist download.zip del download.zip
if exist download rmdir /s /q download

:: Download zip
curl -L -o download.zip https://github.com/emagray/nxcustom/archive/refs/heads/main.zip
if errorlevel 1 (
	color 4f
	echo Failed to download!
	pause
	exit /b
)

:: Extract zip
tar -xf download.zip
if errorlevel 1 (
	color 4f
	echo Failed to extract download!
	pause
	if exist download.zip del download.zip
	exit /b
)

:: Rename previous NXstartup
if exist "%NXCUSTOM_START_DIR%" (
	move "%NXCUSTOM_START_DIR%" "%NXCUSTOM_START_DIR%_%date:~-4%-%date:~-10,-8%-%date:~-7,-5%_%time:~0,2%-%time:~3,2%-%time:~6,2%" >nul
)

:: Move downloaded NXstartup
move "download\NXcustom\NXstartup" "%NXCUSTOM_START_DIR%" >nul

:: Delete download folder and zip
if exist download.zip del download.zip
if exist download rmdir /s /q download

pause
