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

echo "INITVERSE SWAP INSTALL"
sleep 2

echo "cd /root/initverse && python3 main.py" > /usr/bin/initverse
chmod +x /usr/bin/initverse

apt update
apt install python3-pip python3 nano git screen -y

apt-get install screen

cd /root
git clone https://github.com/zamzasalim/initverse.git

cd /root/notpixel
pip install pillow
pip install setproctitle
pip install equests
pip install crayons
pip install requests 
pip install colorama
pip install urllib3
pip install aiosqlite
pip install aiofiles
pip install web3
pip install requests
pip install web3==7.3.0
pip install eth-account
