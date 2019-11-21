############
# Enable SSH
############

iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install win32-openssh -params '"/SSHServerFeature /KeyBasedAuthenticationFeature"' --force -y

#$Vagrant_HOME = "C:\Users\vagrant"
#$OpenSSH_HOME = "C:\Program Files\OpenSSH-Win64"

#New-Item -ItemType Directory -Force -Path $Vagrant_HOME\.ssh

#C:\Windows\System32\icacls.exe $Vagrant_HOME /grant "vagrant:(OI)(CI)F"

#Copy-Item -Path A:\vagrant.pub -Destination $Vagrant_HOME\.ssh\authorized_keys
#(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub', 'C:\Users\vagrant\.ssh\authorized_keys')
