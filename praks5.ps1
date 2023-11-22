#skripti algus
#avab 2 notepadi
Start-Process "notepad.exe"
Start-Process "notepad.exe"

#Ootab 2 sekundit et olla kindel et notepadid on avatud
Start-Sleep -Seconds 2

#Võtab notepadi Process ID
$notepadProcesses = Get-Process | Where-Object { $_.ProcessName -eq "notepad" }

#Kuvab antud rakenduse nime ehk "notepad" ja selle Process ID
$notepadProcesses | Select-Object ProcessName, Id

#Suleb notepadid
$notepadProcesses | ForEach-Object { Stop-Process -Id $_.Id }
#
#skripti lõpp