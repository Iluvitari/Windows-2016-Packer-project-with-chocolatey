Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
$domain = "evanproject.internal"
$username = Project
$password = Shinigami45!
$credential = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password
Add-Computer -DomainName $domain -Credential $credential
Remove-Item –path "C:\securestring.txt"
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True