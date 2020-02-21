#!/bin/sh

sandi="2002"
while [ "$masukan" != "$sandi" ]
do
    read -p "Masukan sandi anda :" masukan
done

echo "Selamat Datang Bosku"
echo "Silahkan pilih yang mau diinstall"
echo "_______________________________"
echo ""
echo "(1)Install Wifi-Phisher"
echo "(2)Install Wifi-Hacker"
echo "(3)Install DarkFb"
echo "(4)Install Bom sms"
echo "(5)Install B4DJINGANv6"
echo "(00)Exit"
echo "________________________________"
read -p "Masukan pilihan anda disini :" pilih
if [ $pilih = "1" ]
then
    echo "Installing Wifi-Phisher"
    cd $HOME
    apt-get install git
    apt-get install python python-pip python-setuptools
    pip install scapy
    git clone https://github.com/wifiphisher/wifiphisher.git
    cd wifiphisher
    python setup.py install
    echo "Penginstallan Selesai"
elif [ $pilih = "2" ]
then
    echo "Installing Wifi-Hacker"
    cd $HOME
    pkg update && pkg upgrade
    pkg install php
    pkg install python
    pkg install python2
    pkg install git
    pkg install curl
    pkg install clang
    pkg install wget      
    git clone https://github.com/esc0rtd3w/wifi-hacker
    echo "Penginstallan selesai"
elif [ $pilih = "3" ]
then
    echo "Installing Darkfb"
    cd $HOME
    apt update && apt upgrade -y
    pkg install git
    pkg install python2
    git clone https://github.com/storiku/darkfb
    pip2 install requests
    pip2 install mechanize
    echo "Penginstallan selesai"
elif [ $pilih = "4" ]
then
    echo "Installing Bom sms"
    cd $HOME
    apt install python2
    apt install php
    apt install git
    git clone https://github.com/joss24242/SpamSms
    echo "Penginstallan selesai"
elif [ $pilih = "5" ]
then
    echo "Installing B4DJINGANv6"
    apt install update
    apt install upgrade
    pip2 install termcolor
    pip2 install lolcat
    apt install toilet
    apt install git
    git clone https://github.com/DarknessCyberTeam/BAJINGANv6
    echo "Penginstallan selesai"
elif [ $pilih = "00" ]
then
    echo "exit"
    echo "__________________"
    echo ""
    echo "TERIMA KASIH BOSKU"
    echo "__________________"
    sleep 2
fi
