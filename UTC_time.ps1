New-ItemProperty -path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Value 1 -PropertyType "QWord"
cmd.exe /c "sc config w32time start= disabled"
Restart-Computer -Confirm