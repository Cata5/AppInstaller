@echo off
SETLOCAL EnableDelayedExpansion
set "scriptDir=%~dp0"
set "wingetScriptPath=%scriptDir%\Apps\winget.ps1"
goto down_winget
title App Installer
:menu
cls
color a
SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=
SETLOCAL DisableDelayedExpansion
%$Echo% " __  __             _         ____           ____   _               _     ____                _    _     "
%$Echo% "|  \/  |  __ _   __| |  ___  | __ )  _   _  | __ ) | |  __ _   ___ | | __|  _ \   ___   __ _ | |_ | |__"
%$Echo% "| |\/| | / _` | / _` | / _ \ |  _ \ | | | | |  _ \ | | / _` | / __|| |/ /| | | | / _ \ / _` || __|| '_ \"
%$Echo% "| |  | || (_| || (_| ||  __/ | |_) || |_| | | |_) || || (_| || (__ |   < | |_| ||  __/| (_| || |_ | | | |"
%$Echo% "|_|  |_| \__,_| \__,_| \___| |____/  \__, | |____/ |_| \__,_| \___||_|\_\|____/  \___| \__,_| \__||_| |_|"
%$Echo% "                                     |___/                                                               "                                                                                                                                                                                                       "
echo ###################################################################################################
echo 1.Chrome                               12.GeForce Experience					23.Microsoft Office 2021
echo 2.Steam                                13.Gaming stuff / Apps (DX,Runtimes,Frameworks)
echo 3.Discord                              14.qBittorrent
echo 4.VLC                                  15.NodeJS
echo 5.Visual Studio Code                   16.Free Download Manager
echo 6.Epic Games                           17.WinRAR
echo 7.Uplay                                18.Unity Hub
echo 7.EA App                               19.Bledner
echo 9.Pytohn(3.10)                         20.CUDA(11.2 dosen't work 11.3 and higher works)
echo 10.Armoury Crate                       21.Intel Driver And Support Assistant
echo 11.Msi Afterburner                     22.Logitech G-HUB
echo ###################################################################################################

REM Prompt the user to enter a list of numbers
echo Enter options (separated by spaces):
set /p "userInput="

REM Iterate through each number in the user's input list
set "inputArray=%userInput%"
for %%i in (%inputArray%) do (
  REM Perform an action based on each number
  if "%%i"=="1" call :chrome
  if "%%i"=="2" call :steam
  if "%%i"=="3" call :discord
  if "%%i"=="4" call :vlc
  if "%%i"=="5" call :vscode
  if "%%i"=="6" call :epic_games
  if "%%i"=="7" call :uplay
  if "%%i"=="8" call :eaapp
  if "%%i"=="9" call :python
  if "%%i"=="10" call :arm_crate
  if "%%i"=="11" call :msi_af
  if "%%i"=="12" call :gfg_exp
  if "%%i"=="13" call :games
  if "%%i"=="14" call :torrent
  if "%%i"=="15" call :nodejs
  if "%%i"=="16" call :fdm
  if "%%i"=="17" call :winrar
  if "%%i"=="18" call :unityhub
  if "%%i"=="19" call :blender
  if "%%i"=="20" call :cuda
  if "%%i"=="21" call :intelDSA
  if "%%i"=="22" call :ghub
  if "%%i"=="23" call :office
)
goto menu

:down_winget
powershell.exe -ExecutionPolicy Bypass -Command "powershell -ExecutionPolicy Bypass -File %wingetScriptPath%"
pause
goto menu
:office 
cd ./Apps/Office/
OInstall.exe
pause
goto :eof
 
:steam
winget install -e --id Valve.Steam
pause
goto :eof


:dicord 
winget install -e --id Discord.Discord
pause
goto :eof


:epic_games
winget install -e --id EpicGames.EpicGamesLauncher
pause
goto :eof


:uplay
winget install -e --id Ubisoft.Connect
pause
goto :eof

:chrome
winget install -e --id Google.Chrome
pause
goto :eof


:gfg_exp
winget install -e --id Nvidia.GeForceExperience
pause
goto :eof
 

:msi_af
winget install -e --id Guru3D.Afterburner
pause
goto :eof


:games
winget install -e --id Microsoft.VCRedist.2015+.x64
winget install -e --id Microsoft.VCRedist.2010.x64
winget install -e --id Microsoft.DirectX
winget install -e --id Microsoft.DotNet.Framework.DeveloperPack_4 (.NET Framework)
pause
goto :eof


:torrent
winget install -e --id qBittorrent.qBittorrent
pause
goto :eof


:arm_crate
winget install -e --id Asus.ArmouryCrate
pause
goto :eof


:nodejs
winget install -e --id OpenJS.NodeJS
pause
goto :eof


:python
winget install -e --id Python.Python.3.10
pause
goto :eof


:vlc
winget install -e --id VideoLAN.VLC
pause
goto :eof


:vscode
winget install -e --id Microsoft.VisualStudioCode
pause
goto :eof


:unityhub
winget install -e --id Unity.UnityHub
pause
goto :eof


:winrar
winget install -e --id RARLab.WinRAR
pause
goto :eof


:blender
winget install -e --id BlenderFoundation.Blender
pause
goto :eof


:eaapp
winget install -e --id ElectronicArts.EADesktop
pause
goto :eof


:cuda
winget install -e --id Nvidia.CUDA -v 11.2
pause
goto :eof


:intelDSA
winget install -e --id Intel.IntelDriverAndSupportAssistant
pause
goto :eof


:ghub
winget install -e --id Logitech.GHUB
pause
goto :eof


:fdm
winget install -e --id SoftDeluxe.FreeDownloadManager
pause
goto :eof
