param(
    [Parameter()]
    [string]$DAAccount,
    [Parameter()]
    [string]$DomainName,
    [Parameter()]
    [string]$UsersLimit
)

$ErrorActionPreference = "Continue"
$Output_Logs = "C:\Users\{0}\Desktop\powershell_output.txt" -f $DAAccount
Start-Transcript -Path $Output_Logs

Add-WindowsFeature RSAT-Role-Tools
IEX((new-object net.webclient).downloadstring("https://raw.githubusercontent.com/wazehell/vulnerable-AD/master/vulnad.ps1"));
Invoke-VulnAD -UsersLimit $UsersLimit -DomainName $DomainName

Stop-Transcript
