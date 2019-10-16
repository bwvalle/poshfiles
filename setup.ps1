$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Install-Module posh-git -AllowPrerelease -Force
Install-Module oh-my-posh -Force
Install-Module DockerCompletion -Force
Install-Module z -AllowClobber -Force

Write-Output "Restart Powershell!"

