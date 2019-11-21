certutil -addstore -f 'TrustedPublisher' 'E:\cert\oracle-vbox.cer'

Start-Process 'E:\VBoxWindowsAdditions.exe' '/S' -Wait
