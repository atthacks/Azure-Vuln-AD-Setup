param(
    [Parameter()]
    [string]$DomainName,
    [Parameter()]
    [string]$UsersLimit
)

Import-Module ADDSDeployment

$ErrorActionPreference = "Continue"
$Output_Logs = "C:\Users\Public\powershell_output.txt"
Start-Transcript -Path $Output_Logs

Add-WindowsFeature RSAT-Role-Tools
IEX((new-object net.webclient).downloadstring("https://raw.githubusercontent.com/wazehell/vulnerable-AD/master/vulnad.ps1"));
Invoke-VulnAD -UsersLimit $UsersLimit -DomainName $DomainName

Stop-Transcript
