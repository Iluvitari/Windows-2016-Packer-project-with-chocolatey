# Packer-Windows2016-Standard (TP5)

Makes a Windows Server 2016 x64 box for use with Virtualbox.

Inspired by so many other repositories on GitHub.

```
$ packer build -force -only=virtualbox-iso windows2016-standard.json
```

This repository is based on **Technical Preview 5 (TP5)** and the build does the following:

* Autonunattend.xml
  * update windows
  * enable winrm
* windows2016-standard.json
  * restart windows
    * enables rdp
    * enables ssh
    * installs guest tools
  * restart windows
    * installs packages
    * does some tweaks
    * compacts the drive
