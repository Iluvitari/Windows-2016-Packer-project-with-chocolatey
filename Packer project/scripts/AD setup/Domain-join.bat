Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
$domain = "evanproject.internal"
$username = suetbroughton
$password = ProjectTest123!
$credential = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password
Add-Computer -DomainName $domain -Credential $credential
Remove-Item –path "C:\securestring.txt"
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

call winrm set winrm/config/service/auth @{Basic="false"}
call winrm set winrm/config/service @{AllowUnencrypted="false"}
netsh advfirewall firewall set rule name="WinRM-HTTP" new action=block

C:/windows/system32/sysprep/sysprep.exe /generalize /oobe /unattend:C:/Windows/Panther/Unattend/unattend.xml /quiet /shutdown