$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
# Encoding
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8
$OutputEncoding = [Console]::OutputEncoding

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
$scripts = gci "$scriptPath\scripts\*.ps1"
$scripts += (gci "$scriptPath\work\*.ps1" -ErrorAction SilentlyContinue)
$scripts | foreach { .$_ }

if (Test-Path("$scriptPath\work")) {
  Import-Module "$ChocolateyProfile"
}

# Proxy
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials



