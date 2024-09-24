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

echo "MOONBIX BOT INSTALL"
sleep 2

echo "cd /root/moonbix && python3 main.py" > /usr/bin/moonbix
chmod +x /usr/bin/moonbix

apt update
apt install python3-pip python3 nano git screen -y

apt-get install screen

cd /root
git clone https://github.com/zamzasalim/moonbix-bot.git

cd /root/moonbix-bot
pip install -r requirements.txt --break-system-packages

[[ -f /root/moonbix.sh ]] && rm /root/moonbix.sh
[[ -f requirements.txt ]] && rm requirements.txt

cd /root/moonbix-bot
