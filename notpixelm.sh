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

echo "cd notpixel && python3 main.py" > /usr/bin/notpixel
chmod +x /usr/bin/notpixel

pkg upgrade
pkg install python3-pip python3 nano git screen -y

apt-get install screen

cd 
git clone https://github.com/zamzasalim/notpixel.git
cd notpixel

pkg install libjpeg-turbo libpng libtiff littlecms libwebp freetype zlib

cd notpixel
pip install pillow
pip install setproctitle
pip install requests
pip install crayons

cd notpixel
