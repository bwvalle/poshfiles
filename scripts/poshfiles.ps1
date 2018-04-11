$poshScriptPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
function Update-MyPoshFile {
    $rootRepo= "$poshScriptPath\..\"
    git -C $rootRepo pull
    git -C $rootRepo submodule update --init --recursive
}

