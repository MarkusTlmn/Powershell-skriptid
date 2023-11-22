#skripti algus
#Funktsioon millega saadakse teenuste arv mis põhineb määratud olekul
function Get-ServiceCount {
    param (
        [string]$State
    )

    $services = Get-Service
    $filteredServices = $services | Where-Object { $_.Status -eq $State }

    $count = $filteredServices.Count
    Write-Host "Teenuste arv mis on $State : $count"
}

#Väljastab teenused mis on "Running"
Get-ServiceCount -State 'Running'

#Väljastab teenused mis on "Stopped"
Get-ServiceCount -State 'Stopped'
#
#skripti lõpp