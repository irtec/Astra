#!/bin/bash
# #IRTech Network
# ==================================================

echo " "
jeshile='\e[40;38;5;82m' #jeshile
jo='\e[0m' # pa ngjyra
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Checking System Version  │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Detected a $os System   │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │    Download Astra Cesbo   │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
curl -Lo /usr/bin/astra https://raw.githubusercontent.com/irtec/Astra/master/astra
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │ Permissions Binnary Astra │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
chmod +x /usr/bin/astra
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │      Create dir Astra     │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
mkdir /etc/astra
wget -P /etc/astra https://raw.githubusercontent.com/irtec/Astra/master/license.txt
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │     Start Astra Cesbo     │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
astra -c /etc/astra/acc.conf -p 8000 &
echo " "
cat << EOF > /etc/rc.local
#!/bin/sh -e
#
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
astra -c /etc/astra/acc.conf -p 8000 &

exit 0
EOF
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │                  Installation Completed                  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │                   http://ipserver:8000                   │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │                      user : admin                        │ \e[0m"
echo -e "${jeshile} │                      pass : admin                        │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+] by IRTech Network                                     │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
sleep 8
echo " "