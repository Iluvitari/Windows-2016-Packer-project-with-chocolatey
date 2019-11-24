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

