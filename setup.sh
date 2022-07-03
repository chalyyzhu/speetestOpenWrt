#!/bin/bash

cyan='\e[36m'
NC='\e[0m'
red='\e[31m'

install() {
        echo -e "$cyan[+]$NC INSTALLING SPEEDTEST .... "
        wget -O /usr/lib/lua/luci/controller/speedtest.lua https://raw.githubusercontent.com/chalyyzhu/speetestOpenWrt/main/speedtest.lua
        wget -O  /usr/lib/lua/luci/view/speedtest.htm https://raw.githubusercontent.com/chalyyzhu/speetestOpenWrt/main/speedtest.htm
        echo -e "$cyan INSTALLING SUCESS... "
        rm setup.sh
}


uninstall() {
        echo -e "$cyan[+]$NC UNINSTALL SPEEDTEST .... "
        rm  /usr/lib/lua/luci/controller/speedtest.lua
        rm /usr/lib/lua/luci/view/speedtest.htm
        echo -e "$cyan UNINSTALL SPEEDTEST SUCESS... "
        rm setup.sh
}



echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "                 • MAIN MENU •                 "
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   ""
echo -e "$cyan 1$NC.  INSTALL SPEEDTEST OPENWRT  "
echo -e "$cyan 2$NC.  UNINSTALL SPEEDTEST OPENWRT"
echo -e   ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   ""

read -p "Select From Options [ 1 - 2 ] : " menu
case $menu in
1)
clear
install
;;
2)
clear
uninstall
;;
esac
