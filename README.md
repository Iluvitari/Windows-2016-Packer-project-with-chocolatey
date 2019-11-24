# Windows-2016-Packer-project

Makes a Windows Server 2016 x64 box for use with Virtualbox.

Inspired by so many other repositories on GitHub.

```
$ packer build -force vbox-2016.json
```
--

To do:
Automate connection to AD with deployment of GPO policies.

--

If winrm does not connect please try winrm troubleshooting for your local machine befor raising an issue:
WinRM Troubleshooting part 1: https://youtu.be/YQ6UNFctOJQ
WinRM Troubleshooting part 2: https://youtu.be/wIhhHk-mIbs

--

Prerequisites:
- Installation of the latest packer version.
  https://www.packer.io/downloads.html
    - place packer in the Packer project folder and add to path in windows environment variables.
  
- VirtualBox latest virstion.
  https://www.virtualbox.org/wiki/Downloads
  
- Windows 2016 ISO (for this test project I am using 2016 evaluation iso, but will work with a licensed virsion)
  https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2016
    - Place iso in the iso folder.
  
  (For licensed version we will need to add the key into the autounattend.xml file for installation to function properly)
