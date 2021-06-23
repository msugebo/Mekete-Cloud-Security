#!/bin/bash


#create directories

mkdir ~/research 2> /dev/null


echo "Today is" $(date) >> ~/research/sys_info.txt


echo -e "The machine name is $(uname -a) \n" >> ~/research/sys_info.txt


echo "The machine IP address is $(hostname -I) \n" >> ~/research/sys_info.txt


echo -e "The machine IP address is $(ip add | head -9 | tail -1) \n" >> ~/research/sys_info.txt


echo -e "The hostname is $HOSTNAME \n" >> ~/research/sys_info.txt


echo -e "The hostname is $(hostname -s) \n" >> ~/research/sys_info.txt


echo -e "The DNS Servers are \n $(systemd-resolve --status  | grep -i 'dns server') \n" >> ~/research/sys_info.txt


echo -e "Memory Info \n $(free -h) /n" >> ~/research/sys_info.txt


echo -e "CPU Info \n $(lscpu | grep CPU) /n" >> ~/research/sys_info.txt


echo -e "Disk Usage Info \n $(df -H | head -2) /n" >> ~/research/sys_info.txt


echo -e "Who is online \n $(who -a) /n" >> ~/research/sys_info.txt

echo -e "\nExc Files:" >> ~/research/sys_info.txt

sudo find /home -type f -perm 777 >> ~/research/sys_info.txt

echo -e "\nTop 10 Processes \n" >> ~/research/sys_info.txt

ps aux -m | awk '{print $1, $2, $3, $4, $11}' | head -11 >> ~/research/sys_info.txt
