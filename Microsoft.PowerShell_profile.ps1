$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Modules
Import-Module posh-git
Import-Module -Name oh-my-posh

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Set-Theme paradox

# scripts
gci "$scriptPath\scripts\*.ps1" | foreach { .$_ }

# Proxy
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials



