#skripti algus
#avab 3 notepadi
Start-Process notepad
Start-Process notepad
Start-Process notepad
$count = 0
#kui notepad töötab siis kirjutab "Notepad is running" ning paneb ükshaaval kõik notepadid kinni
while ($notepads = Get-Process -Name notepad -ErrorAction SilentlyContinue) 
{
 Write-Host "Notepad is running"
 #kasutades [void] ei väljastata true/false 
 [void]$notepads[0].CloseMainWindow()
 #loeb mitu korda väljastati "Notepad is running"
 $count++
}
$count

#skripti lõpp