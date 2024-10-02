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

git clone https://github.com/zamzasalim/initverse.git

cd notpixel

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

echo -e "\033[0;35m"
echo "Done...."
echo -e "\e[0m"
