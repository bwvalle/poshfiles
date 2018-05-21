function start-explorer($path=".") { explorer $path }

function hosts { code "$($env:WinDir)\system32\drivers\etc\hosts" }
