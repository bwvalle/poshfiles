$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Install-Module -Name posh-git -AllowPrerelease -Force -Scope AllUsers
Install-Module -Name Pester -Force -SkipPublisherCheck

# Install-Module z -Force -AllowClobber

Write-Host "Restart Powershell!" -ForegroundColor Yellow

