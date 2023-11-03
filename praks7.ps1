#skripti algus
#
$colors = @("Red", "Green", "Blue", "Yellow")
$results = @()
#iga numbri kohta kuni 20ni valib ühe suvalise värvi $colors grupist
for($i = 1 ; $i -le 20 ; $i++)
{
    $result = Get-Random -InputObject $colors
    $output = [PSCustomObject]@{
        RollNumber = $i
        Group = $result
    }
    $results += $output
}
$results
#skripti lõpp