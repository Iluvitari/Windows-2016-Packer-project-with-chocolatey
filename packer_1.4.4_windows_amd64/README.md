# Packer-Windows2016-Standard (TP5)

Makes a Windows Server 2016 x64 box for use with Virtualbox.

Inspired by so many other repositories on GitHub.

| Build	| Branch | Date |
|---:|---|---|
| 6.4.9841 | Technical Preview | October 2014 |
| 10.0.10074 |	TP2	| May 2015 |
| 10.0.10514 | TP 3	| August 2015 |
| 10.0.10586 | TP 4 | November 2015 |
| **10.0.14300** | **TP5** | **April 2016** |

```
$ packer build -force -only=virtualbox-iso windows2016-standard.json

$ vagrant box add --name windows2016-standard builds/windows2016-standard.virtualbox.box --force

$ vagrant init windows2016-standard

$ vagrant up
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
