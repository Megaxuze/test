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

echo "MoonBix Bot"
sleep 2

echo "cd /root/moonbix && python3 main.py" > /usr/bin/moonbix
chmod +x /usr/bin/moonbix

apt update
apt install python3-pip python3 nano git screen -y

cd /root
git clone https://github.com/zamzasalim/moonbix.git

cd /root/moonbix
pip install -r requirements.txt --break-system-packages

[[ -f /root/moonbix.sh ]] && rm /root/moonbix.sh
[[ -f requirements.txt ]] && rm requirements.txt

while true; do
    read -p "Masukkan token baru (atau ketik 'exit' untuk selesai): " token_input
    if [[ "$token_input" == "exit" ]]; then
        break
    fi
    echo "$token_input" >> tokens.txt
done

proxy_file="/root/moonbix/proxy.txt"
read -p "Apakah Anda ingin menambahkan proxy? (y/n): " use_proxy

if [[ "$use_proxy" == "y" || "$use_proxy" == "Y" ]]; then
    while true; do
        read -p "Masukkan proxy baru (atau ketik 'exit' untuk selesai): " proxy_input
        if [[ "$proxy_input" == "exit" ]]; then
            break
        fi
        echo "$proxy_input" >> "$proxy_file"
    done
fi

if [[ -f "$proxy_file" && -s "$proxy_file" ]]; then
    screen -S moonbix -dm bash -c "http_proxy=$(<"$proxy_file") https_proxy=$(<"$proxy_file") python3 main.py"
else
    screen -S moonbix -dm bash -c "python3 main.py"
fi

echo "Gunakan 'screen -r moonbix' untuk mengakses sesi."
