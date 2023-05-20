@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=

SETLOCAL DisableDelayedExpansion
%$Echo% " __  __             _         ____           ____   _               _     ____                _    _     "
%$Echo% "|  \/  |  __ _   __| |  ___  | __ )  _   _  | __ ) | |  __ _   ___ | | __|  _ \   ___   __ _ | |_ | |__"
%$Echo% "| |\/| | / _` | / _` | / _ \ |  _ \ | | | | |  _ \ | | / _` | / __|| |/ /| | | | / _ \ / _` || __|| '_ \"
%$Echo% "| |  | || (_| || (_| ||  __/ | |_) || |_| | | |_) || || (_| || (__ |   < | |_| ||  __/| (_| || |_ | | | |"
%$Echo% "|_|  |_| \__,_| \__,_| \___| |____/  \__, | |____/ |_| \__,_| \___||_|\_\|____/  \___| \__,_| \__||_| |_|"
%$Echo% "                                     |___/                                                                    "                                                                                                                                                                                                       "
ENDLOCAL
title Windows 10/11 activator
color 2
:start                                                                                                                                                  
echo ###################################################################################################
ECHO 0.Deactivate (if activated already)
ECHO 1.Activate Windows 10 Home                     12.Activate Windows 11 Home                   
ECHO 2.Activate Windows 10 Home N                   13.Activate Windows 11 Home N
ECHO 3.Activate Windows 10 Home Single Language     14.Activate Windows 11 Home Single Language
ECHO 4.Activate Windows 10 Home Country Specific    15.Activate Windows 11 Home Country Specific
ECHO 5.Activate Windows 10 Pro                      16.Activate Windows 11 Pro
ECHO 6.Activate Windows 10 Pro N                    17.Activate Windows 11 Pro N
ECHO 7.Activate Windows 10 Education                18.Activate Windows 11 Education
ECHO 8.Activate Windows 10 Education N              19.Activate Windows 11 Education N
ECHO 9.Activate Windows 10 Enterprise               20. Activate Windows 11 Enterprise
ECHO 10.Activate Windows 10 Enterprise N            21.Activate Windows 11  Enterprise N
ECHO 11.Check if activated                          22.Activate Microsoft Office
echo ###################################################################################################
set choice=
set /p choice=Which Windows version would you like to activate?:
if '%choice%'=='0' goto zero
if '%choice%'=='1' goto one
if '%choice%'=='2' goto two
if '%choice%'=='3' goto three
if '%choice%'=='4' goto four
if '%choice%'=='5' goto five
if '%choice%'=='6' goto six
if '%choice%'=='7' goto seven
if '%choice%'=='8' goto eight
if '%choice%'=='9' goto nine
if '%choice%'=='10' goto ten
if '%choice%'=='11' goto eleven
if '%choice%'=='12' goto twelve
if '%choice%'=='13' goto thirteen
if '%choice%'=='14' goto fourteen
if '%choice%'=='15' goto fifteen
if '%choice%'=='16' goto sixteen
if '%choice%'=='17' goto seventeen
if '%choice%'=='18' goto eighteen
if '%choice%'=='19' goto nineteen
if '%choice%'=='20' goto twenty
if '%choice%'=='21' goto twentyone
if '%choice%'=='22' goto twentytwo
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:zero
slmgr.vbs /upk
slmgr.vbs /cpky
goto end
:one
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto activate
goto end
:two
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
goto activate
goto end
:three
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
goto activate
goto end
:four
slmgr /ipk PVMJN-6DFY6–9CCP6–7BKTT-D3WVR
goto activate
goto end
:five
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto activate
goto end
:six
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
goto activate
goto end
:seven 
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto activate
goto end
:eight
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto activate
goto end
:nine
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto activate
goto end
:ten
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto activate
goto end
:eleven
slmgr /xpr
goto end
:twelve
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto activate
goto end
:thirteen
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
goto activate
goto end
:fourteen
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
goto activate
goto end
:fifteen
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
goto activate
goto end
:sixteen
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto activate
goto end
:seventeen
slmgr /ipkMH37W-N47XK-V7XM9-C7227-GCQG9
goto activate
goto end
:eighteen
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto activate
goto end
:nineteen
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto activate
goto end
:twenty
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto activate
goto end
:twentyone
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto activate
goto end
:twentytwo
cd /d %ProgramFiles(x86)%\Microsoft Office\Office16
cd /d %ProgramFiles%\Microsoft Office\Office16
for /f %x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x"
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /unpkey:6F7TH >nul
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /sethst:e8.us.to
cscript ospp.vbs /act
:activate
slmgr /skms kms8.msguides.com
slmgr /ato
:end 
pause
exit