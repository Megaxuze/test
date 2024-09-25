#!/bin/bash

log() {
    local level=$1
    local message=$2
    echo "[$level] $message"
}
print_green() {
    echo -e "\e[32m$1\e[0m"
}
curl -s https://data.zamzasalim.xyz/file/uploads/asclogo.sh | bash
sleep 5

echo "NOTPIXEL BOT INSTALL"
sleep 2

echo "cd /root/notpixel && python3 main.py" > /usr/bin/notpixel
chmod +x /usr/bin/notpixel

apt update
apt install python3-pip python3 nano git screen -y

apt-get install screen

cd /root
git clone https://github.com/zamzasalim/notpixel.git

cd /root/notpixel
pip install pillow==10.4.0
pip install setproctitle==1.3.3
pip install requests==2.31.0
pip install crayons==0.4.0

cd /root/notpixel
