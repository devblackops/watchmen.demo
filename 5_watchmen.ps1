
Import-Module -Name Watchmen

$tests = Get-WatchmenTest -Path .\5__my.watchmen.ps1 -Verbose

$tests | Invoke-WatchmenTest -IncludePesterOutput -Verbose
