#!/data/data/com.termux/files/usr/bin/bash

clear

#color
y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[1;32m'

# Banner
echo -e "${y}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${y}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "${r}"
echo " ██████╗ ███████╗███████╗██╗  ██╗████████╗ ██████╗ ██████╗ "
echo " ██╔══██╗██╔════╝██╔════╝██║ ██╔╝╚══██╔══╝██╔═══██╗██╔══██╗"
echo " ██║  ██║█████╗  ███████╗█████╔╝    ██║   ██║   ██║██████╔╝"
echo " ██║  ██║██╔══╝  ╚════██║██╔═██╗    ██║   ██║   ██║██╔═══╝ "
echo " ██████╔╝███████╗███████║██║  ██╗   ██║   ╚██████╔╝██║     "
echo " ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     "

echo -e "${b}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://chat.whatsapp.com/HlH3EfeFlar5Fy1YCieMKJ

# Set up VNC server
echo "Setting up VNC server..."

# Start the VNC server for the first time to create necessary files
vncserver :1

# Stop the VNC server to configure it
vncserver -kill :1

# Create xstartup file
cat << EOF > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
xfce4-session &
EOF

# Make xstartup executable
chmod +x ~/.vnc/xstartup

# Start the VNC server again
vncserver :1

# Start the xrdp server
xrdp &

# Output instructions for connecting
IP_ADDRESS=$(termux-ips | grep "inet" | awk '{print $2}')                                                                                                                                                                                                               echo "VNC server is running."
echo "Connect using an RDP client to: $IP_ADDRESS:3389"
echo "To stop the VNC and xrdp servers, use the following commands:"
echo "vncserver -kill :1"
echo "pkill xrdp"
