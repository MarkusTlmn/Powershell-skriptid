#skripti algus

#Küsime kasutajalt sisendit
Write-Host "Select Country : " -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2 : Australia" -ForegroundColor Cyan
Write-Host "3 : China" -ForegroundColor Cyan
$num = Read-Host "Please select country"

#väljastame teksti vastavalt numbrile
if($num -eq "1")
{
    Write-Host "India's capital is New Delhi" -ForegroundColor Green
}
elseif($num -eq "2")
{
    Write-Host "Australia's capital is Canberra" -ForegroundColor Green
}
elseif($num -eq "3")
{
    Write-Host "China's capital is Beijing" -ForegroundColor green
}
else
{
    Write-Host "Chosen number is not on the list"
}

#skripti lõpp