Start-Transcript -Path C:\Windows\Temp\network.log
Set-DnsClientServerAddress -InterfaceAlias "Wired Ethernet Connection"
-ServerAddress 192.168.56.4, 192.168.56.1