$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Install-Module -Name posh-git -AllowPrerelease -Force -Scope AllUsers
Install-Module -Name Pester -Force -SkipPublisherCheck
Install-Module -Name oh-my-posh -Scope CurrentUser

# Install-Module z -Force -AllowClobber

Write-Output "Restart Powershell!"

