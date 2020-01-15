New-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters\' `
     -Name  'DisabledComponents' -Value '0xffffffff' -PropertyType 'DWord'
Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.0.2.15","8.8.8.8")