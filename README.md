# CyberScanners-DESKTOP-V1

$ pkg update && pkg upgrade

$ pkg install x11-repo -y

$ pkg install xfce4 xfce4-terminal xrdp tigervnc -y

$ pkg install git

$ git clone https://github.com/cyberscanners/CyberScanners-DESKTOP-V1.git

$ cd CyberScanners-DESKTOP-V1

$ bash desktop.sh

# DESKTOP ON COMMAND.

$ vncserver :1 && xrdp &

# DESKTOP OFF COMMAND.

$ vncserver -kill :1 && pkill xrdp

# PASSWORD DESKTOP :

cyber@

@cyber