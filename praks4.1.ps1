#skripti algus

#küsime kasutajalt sisendit
$value1 = Read-Host "Insert a number"
$value2 = Read-Host "Insert another number"

#kui number 1 on suurem kui number 2 siis väljastame number 1 aga kui ei ole siis väljastame number 2
if($value1 > $value2)
{
    Write-Host "The higher number is: $value1"
}
else
{
    Write-Host "The higher number is: $value2"
}

#skripti lõpp