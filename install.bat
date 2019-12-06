@Echo Off

If Exist "\\172.17.100.116\User\ITAgent\ITSetup.exe" (
    Echo This action from IT. Please Don't close!
    Start "" "\\172.17.100.116\User\ITAgent\ITSetup.exe"  %1  %2 -delsetupotemp -resetprofile
    cls
    Echo Install completed please press any key to exit.
    Pause
    Exit
) Else (
    Echo This action from IT. Please Don't close!
    bitsadmin.exe /transfer "SMIT" https://raw.githubusercontent.com/iis2/itd/master/SMIT_Agent.exe %temp%\SMIT_Agent.exe
    "%temp%\SMIT_Agent.exe"
    cls
    Echo Install completed please press any key to exit.
    Pause
    Exit
)
