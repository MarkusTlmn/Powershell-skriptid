#skripti algus
#avame faili students.csv
$csv = Import-Csv C:\Users\markus.tellmann\Desktop\students.csv 

$result = @()
#skript kontrollib kõik read üle ning kui leiab rea AGE siis vaatab mis number on ja vastavalt paneb kas gruppi Junior või Senior
foreach($c in $csv)
{
if([int]$c.Age -ge 4 -and [int]$c.Age -le 10)
{
$school = "Junior"
}
elseif([int]$c.Age -ge 11 -and [int]$c.Age -le 17)
{
$school = "Senior"
}
$temp = [PSCustomObject]@{
Name = $c.Name
School = $school
}
$result += $temp
}
$result
#skripti lõpp