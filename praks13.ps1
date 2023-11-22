#skripti algus
#Funktsioon peamenüü kuvamiseks
function PeaMenuu {
    Write-Host "`t`t`tPindala Kalkulaator" -ForegroundColor Green
    Write-Host "`n`t`t`tPeamenüü" -ForegroundColor Yellow
    Write-Host "`nPalun valige valik, et sooritada vastav toiming`n" -ForegroundColor Yellow
    Write-Host "1: Ruudu Pindala" -ForegroundColor Green
    Write-Host "2: Ristküliku Pindala" -ForegroundColor Green
    Write-Host "3: Ringi Pindala" -ForegroundColor Green
    Write-Host "4: Kolmnurga Pindala" -ForegroundColor Green
    Write-Host "5: Välju`n" -ForegroundColor Green
    $valik = Read-Host "Sisestage oma valik"
    return $valik
}

#Funktsioon järgmise valiku kontrollimiseks
function KontrolliMenuud {
    Write-Host "`n`nPalun valige järgmine valik" -ForegroundColor Yellow
    Write-Host "`n1: Tagasi Peamenüüsse" -ForegroundColor Green
    Write-Host "2: Välju`n" -ForegroundColor Green
    $valik2 = Read-Host "Sisestage oma valik"
    if ($valik2 -eq "1") {
        continue
    }
    elseif ($valik2 -eq "2") {
        exit
    }
    else {
        Write-Host "`nEnter correct option" -ForegroundColor Red
        KontrolliMenuud
    }
}

#Funktsioon ruudu pindala arvutamiseks
function RuuduPindala {
    cls
    Write-Host "`t`t`tRuudu Pindala`n" -ForegroundColor Green
    [int]$kylg = Read-Host "Sisestage ruudu külje pikkus"
    $pindala = $kylg * $kylg
    Write-Host "`nRuudu pindala : "$pindala -ForegroundColor Green
    KontrolliMenuud
}

#Funktsioon ristküliku pindala arvutamiseks
function RistkylikuPindala {
    cls
    Write-Host "`t`tRistküliku Pindala`n" -ForegroundColor Green
    [int]$pikkus = Read-Host "Sisestage ristküliku pikkus"
    [int]$laius = Read-Host "Sisestage ristküliku laius"
    $pindala = $pikkus * $laius
    Write-Host "`nRistküliku pindala : "$pindala -ForegroundColor Green
    KontrolliMenuud
}

#Funktsioon ringi pindala arvutamiseks
function RingiPindala {
    cls
    Write-Host "`t`tRingi Pindala`n" -ForegroundColor Green
    [int]$raadius = Read-Host "Sisestage ringi raadius"
    $pindala = [math]::PI * [math]::Pow($raadius, 2)
    Write-Host "`nRingi pindala : "$pindala -ForegroundColor Green
    KontrolliMenuud
}

#Funktsioon kolmnurga pindala arvutamiseks
function KolmnurgaPindala {
    cls
    Write-Host "`t`tKolmnurga Pindala`n" -ForegroundColor Green
    [int]$alus = Read-Host "Sisestage kolmnurga alus"
    [int]$korgus = Read-Host "Sisestage kolmnurga kõrgus"
    $pindala = 0.5 * $alus * $korgus
    Write-Host "`nKolmnurga pindala : "$pindala -ForegroundColor Green
    KontrolliMenuud
}

#Peamine skript, mis käivitab programm
do {
    cls
    $valik1 = PeaMenuu
    switch ($valik1) {
        1 {
            cls
            RuuduPindala
            KontrolliMenuud
        }
        2 {
            cls
            RistkylikuPindala
            KontrolliMenuud
        }
        3 {
            cls
            RingiPindala
            KontrolliMenuud
        }
        4 {
            cls
            KolmnurgaPindala
            KontrolliMenuud
        }
        5 {
            # Välju skriptist
            Write-Host "Väljumine skriptist" -ForegroundColor Green
            exit
        }
    }
} while ($valik1 -ne "5") 
#
#skripti lõpp          
