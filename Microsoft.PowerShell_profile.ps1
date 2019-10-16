$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8
$OutputEncoding = [Console]::OutputEncoding

# Modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module DockerCompletion
Import-Module z

Set-Theme MyParadox

# scripts
$scripts = gci "$scriptPath\scripts\*.ps1"
$scripts += (gci "$scriptPath\work\*.ps1" -ErrorAction SilentlyContinue)
$scripts | foreach { .$_ }

# Proxy
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials



 