Start-Transcript -Path C:\Windows\Temp\winrm.log

if([environment]::OSVersion.version.Major -ge 6) {
  Write-Host "Environment $([environment]::OSVersion.version.Major) is >6"

  # You cannot change the network location if you are joined to a domain, so abort
  if(1,3,4,5 -contains (Get-WmiObject win32_computersystem).DomainRole) { return }
  Write-Host "Domain Role is not 1,3,4,5, so continuing"

  # Get network connections
  $networkListManager = [Activator]::CreateInstance([Type]::GetTypeFromCLSID([Guid]"{DCB00C01-570F-4A9B-8D69-199FDBA5723B}"))
  Write-Host "Created network list manager"

  $connections = $networkListManager.GetNetworkConnections()
  Write-Host "Got connections from network list manager"

  $connections |foreach {
  	Write-Host $_.GetNetwork().GetName()"category was previously set to"$_.GetNetwork().GetCategory()
  	$_.GetNetwork().SetCategory(1)
  	Write-Host $_.GetNetwork().GetName()"changed to category"$_.GetNetwork().GetCategory()
  }
}

Enable-PSRemoting -Force
winrm quickconfig -q

winrm set winrm/config/client/auth '@{Basic="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="2048"}'
Restart-Service -Name WinRM
netsh advfirewall firewall add rule name="WinRM-HTTP" dir=in localport=5985 protocol=TCP action=allow
netsh advfirewall firewall add rule name="WinRM-HTTP" dir=in localport=5986 protocol=TCP action=allow

net stop winrm
sc.exe config winrm start=auto
net start winrm