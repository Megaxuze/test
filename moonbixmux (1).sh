#!/bin/bash

print_green() {
    echo -e "\e[32m$1\e[0m"
}
curl -s https://data.zamzasalim.xyz/file/uploads/asclogo.sh | bash
sleep 5

pkg install python

pkg install git

pkg install nodejs

sleep 5

git clone https://github.com/zamzasalim/moonbix-bot.git

cd moonbix-bot

pip install -r requirements.txt --break-system-packages

echo -e "\033[0;35m"
echo "Done...."
echo -e "\e[0m"
