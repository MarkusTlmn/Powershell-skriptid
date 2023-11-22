#skripti algus
#Funktsioon käimasolevate teenuste arvu saamiseks 
function Get-RunningServiceCount {
    $runningServices = Get-Service | Where-Object { $_.Status -eq 'Running' }
    $runningCount = $runningServices.Count
    Write-Host "Käimasolevate teenuste arv: $runningCount"
}

#Funktsioon peatatud teenuste arvu saamiseks
function Get-StoppedServiceCount {
    $stoppedServices = Get-Service | Where-Object { $_.Status -eq 'Stopped' }
    $stoppedCount = $stoppedServices.Count
    Write-Host "Peatunud teenuste arv: $stoppedCount"
}

#Käivitab Funktisoonid
Get-RunningServiceCount
Get-StoppedServiceCount
#
#skripti lõpp