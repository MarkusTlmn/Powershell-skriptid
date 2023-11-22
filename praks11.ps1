#skripti algus
#Küsib kasutajalt sisendit
$number1 = Read-Host "Sisesta esimene number: "
$number2 = Read-Host "Sisesta teine number: " 

#muudab saadud sisendi stringist numbriteks
$number1 = [double]::Parse($number1)
$number2 = [double]::Parse($number2)

#Loob menüü
$menu = @"
1. Liitmine
2. Lahutamine
3. Korrutamine
4. Jagamine
"@

#Väljastab menüü ja küsib kasutajalt, et ta valiks ühe antud valikutest
Write-Host "Valitud numbrid: $number1, $number2"
Write-Host "Kalkulaator" -ForegroundColor Green
Write-Host $menu -ForegroundColor Yellow

#Võtab kasutaja sisendi
$choice = Read-Host "Vali üks antud menüüst"

#Väljastab vastuse vastavalt varasemale valikule, ning veakirja kui sisestatud number polnud valikus
switch ($choice) {
    1 { $result = $number1 + $number2; Write-Host "Vastus: $result" }
    2 { $result = $number1 - $number2; Write-Host "Vastus: $result" }
    3 { $result = $number1 * $number2; Write-Host "Vastus: $result" }
    4 { 
        if ($number2 -eq 0) {
            Write-Host "nulliga ei saa jagada"
        } else {
            $result = $number1 / $number2; 
            Write-Host "Vastus: $result" 
        }
    }
    default { Write-Host "Antud number pole valikus, proovi uuesti" }
}
#
#skripti lõpp