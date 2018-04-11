$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Modules
Import-Module posh-git
# Import-Module z

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# scripts
gci "$scriptPath\scripts\*.ps1" | foreach { .$_ }

# Proxy
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials



