#!/bin/bash
#script created by ࿔iᎷ•ƒiηeX
echo -e "=========================================="
echo -e "*      Script Created By ࿔iᎷ•ƒiηeX        *"
echo -e "=========================================="
read -p "* Username SSH / OVPN : " Login "        *"
read -p "*Password SSH / OVPN  : " Pass "         *"
read -p "*Masa Aktif           : " masaaktif  "   *"
echo -e "=========================================="
echo -e "*      Script Created By ࿔iᎷ•ƒiηeX        *"
echo -e "=========================================="
echo -e ""
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expired" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY ࿔iᎷ•ƒiηeX   *"
echo -e "========================================"
echo -e ""
echo -e "========================================"
echo -e "==  Di Bawah Ini Informasi Akun Anda  =="
echo -e "========================================"
echo -e "Username         : $Login "
echo -e "Password         : $Pass "
echo -e "Host / IP Server : $IP" 
echo -e "Port OpenSSH     : 22"
echo -e "Port SSL/TLS     : 443"
echo -e "Port Dropbear    : 80,444,143,442,110"
echo -e "Port Squid       : 80.8080,3128 ( Saran Pakai 80 )"
echo -e "OpenVPN TCP 1194 : http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN UDP 2200 : http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN SSL 442  : http://$IP:81/client-tcp-ssl.ovpn"
echo -e "========================================"
echo -e "==   Masa Aktif Akun Anda : $exp      =="
echo -e "========================================"
echo -e "         Script By ࿔iᎷ•ƒiηeX "