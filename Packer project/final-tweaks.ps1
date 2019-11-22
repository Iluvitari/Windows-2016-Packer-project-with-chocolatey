##############
# Final Tweaks
##############

# diable autologin *************************************************************

Set-ItemProperty                                                               `
    'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon'              `
    -name AutoAdminLogon                                                       `
    -value 0

# diable hibernate *************************************************************

Set-ItemProperty                                                               `
    -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Power'                       `
    -Name HiberFileSizePercent                                                 `
    -value 0

Set-ItemProperty                                                               `
    -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Power'                       `
    -name HibernateEnabled                                                     `
    -value 0

# enable user account controls (UAC) - formerly LUA (Limited User Accounts) ****

Set-ItemProperty                                                               `
    -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\policies\system'    `
    -Name EnableLUA                                                            `
    -Value 1
