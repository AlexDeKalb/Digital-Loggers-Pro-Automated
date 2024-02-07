$EthernetPortsNumber = Read-Host -Prompt 'Provide Number of ethernet ports'
$EthernetRange = 2..$EthernetPortsNumber
$EthernetDisable = 3..$EthernetPortsNumber
Set-Location "C:\Users\Alex\OneDrive - DeKalb Enterprise\Documents\Automation\Configure Multiple IPPS at once Powershell"
Get-Content "y.txt" | plink -ssh admin@192.168.0.99
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet enable ether2"
$EthernetDisable | % { plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether$_" }
#timeout /T 45 /NOBREAK


Foreach ($number in $EthernetRange) {
   
    $PlusOne = $number + 1
    #cmd.exe /c '.\FinalScript.bat'
    plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether$number; interface ethernet enable ether$PlusOne"
    #timeout /T 45 /NOBREAK
    timeout /T 3 /NOBREAK

}
