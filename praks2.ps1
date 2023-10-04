#skripti algus
#sisestame antud andmed
$hashtable1=@{Name="John","Joe","Mary"; DaysWorked=12,20,18}
$hashtable2=@{Name="John","Joe","Mary"; SalaryPerDay=100,120,150}

#
$Salary1 = $hashtable1.DaysWorked[0] * $hashtable2.SalaryPerDay[0]
$Salary2 = $hashtable1.DaysWorked[1] * $hashtable2.SalaryPerDay[1]
$Salary3 = $hashtable1.DaysWorked[2] * $hashtable2.SalaryPerDay[2]

$hashtable3=@{Name="John","Joe","Mary"; Salary=$Salary1,$Salary2,$Salary3}
$hashtable3 