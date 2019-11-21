choco install sdelete ultradefrag --allow-empty-checksums --confirm --limit-output

Stop-Service wuauserv
Set-Service wuauserv -Startup disabled

Get-ChildItem -Path 'C:\Windows\SoftwareDistribution\Download' -Recurse | Remove-Item -Force -Recurse

# udefrag --optimize --repeat C:

Set-ItemProperty                                                               `
    'HKCU:\Software\Sysinternals\SDelete'                                      `
    -name EulaAccepted                                                         `
    -value 1

# sdelete -q -z C:
