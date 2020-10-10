Install-Module Autotask
$Credential = Get-Credential
$ApiKey = Read-Host -Prompt "API Key:" -AsSecureString
$ApiKey = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ApiKey))
Import-Module Autotask -ArgumentList $Credential, $ApiKey, '*' -Force
Update-AtwsDiskCache
Update-AtwsFunctions -FunctionSet Dynamic
Remove-Variable Credential
Remove-Variable ApiKey
