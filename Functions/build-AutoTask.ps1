# Download and install the module
Install-Module Autotask

# Connect to the Autotask Web Services API and load the module
# The first time you connect a disk cache will be created
$Credential = Get-Credential
$ApiKey = Read-Host -Prompt "API Key:" -AsSecureString
$ApiKey = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ApiKey))

# Refresh all entities with picklists
Import-Module Autotask -ArgumentList $Credential, $ApiKey, '*'

## Refresh EVERYTHING in the cache and script functions on disk
# Will download all entities and detailed field info for all entities
Update-AtwsDiskCache

# Will recreate all .ps1 scripts for any entity with a picklist
Update-AtwsFunctions -FunctionSet Dynamic


Remove-Variable Credential
Remove-Variable ApiKey
