#skripti algus
#avab 3 notepadi
Start-Process notepad
Start-Process notepad
Start-Process notepad
#kui notepad töötab siis kirjutab "Notepad is running" ning paneb ükshaaval kõik notepadid kinni
while ($notepads = Get-Process -Name notepad -ErrorAction SilentlyContinue) 
{
 Write-Host "Notepad is running"
 #kasutades [void] ei väljastata true/false 
 [void]$notepads[0].CloseMainWindow()
}
#skripti lõpp

