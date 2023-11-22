#skripti algus
$folderPath = "C:\Temp\Test"

#Loob kausta kui seda pole juba olemas
New-Item -ItemType Directory -Path $folderPath -Force

#Kopeerib näidis failid kausta
Copy-Item "C:\Users\Markus\Desktop\Test11.csv" -Destination $folderPath
Copy-Item "C:\Users\Markus\Desktop\Test22.txt" -Destination $folderPath
Copy-Item "C:\Users\Markus\Desktop\Test33.txt" -Destination $folderPath

#Võtab kõik failid antud kaustast
$files = Get-ChildItem -Path $folderPath

#Väljastab mitu faili on kaustas
Write-Host "Kaustas on $($files.Count) faili"

#Leiab ja Väljastab csv faili suuruse, juhul kui csv faili pole väljastab veateate
$csvFile = $files | Where-Object { $_.Extension -eq ".csv" }

if ($csvFile) {
    $sizeKB = [math]::Round(($csvFile.Length / 1KB), 2)
    $sizeMB = [math]::Round(($csvFile.Length / 1MB), 2)

    Write-Host "  Failinimi: Test11.csv"
    Write-Host "  Size in KB: $sizeKB KB"
    Write-Host "  Size in MB: $sizeMB MB"
} else {
    Write-Host "CSV faili polnud kaustas."
}