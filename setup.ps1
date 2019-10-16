$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Install-Module -posh-git -Scope CurrentUser -AllowPrerelease -Force
Install-Module oh-my-posh -Scope CurrentUser
Install-Module DockerCompletion -Scope CurrentUser

# Install-Module z -Force -AllowClobber

Write-Output "Restart Powershell!"

