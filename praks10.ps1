#skripti algus
#avab 3 notepadi 
Start-Process notepad
Start-Process notepad
Start-Process notepad
$count = 0

#kui notepad töötab siis kirjutab "Notepad is running" ning paneb ükshaaval kõik notepadid kinni kuni ühtegi notepadi pole enam lahti
do {
    Write-Host "Notepad is running"
    $notepads = Get-Process -Name notepad -ErrorAction SilentlyContinue
    if ($notepads) {
        [void]$notepads[0].CloseMainWindow()
        $count++
    }
} until (-not $notepads)

$count 
#skripti lõpp 
