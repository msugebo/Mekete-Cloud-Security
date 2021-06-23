Firewall stopped and disabled on system startup
sysadmin@UbuntuDesktop:~$ sudo ufw status
Status: inactive
sysadmin@UbuntuDesktop:~$ ifconfig
docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:46:13:45:97  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::d898:58ba:430f:cf40  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:79:bc:c9  txqueuelen 1000  (Ethernet)
        RX packets 5266  bytes 3923691 (3.9 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 5086  bytes 534261 (534.2 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 83  bytes 7142 (7.1 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 83  bytes 7142 (7.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

sysadmin@UbuntuDesktop:~$ ip add
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:79:bc:c9 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 67303sec preferred_lft 67303sec
    inet6 fe80::d898:58ba:430f:cf40/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:46:13:45:97 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
sysadmin@UbuntuDesktop:~$ clear

sysadmin@UbuntuDesktop:~$ sudo ufw status
[sudo] password for sysadmin: 
Status: inactive
sysadmin@UbuntuDesktop:~$ sudo ufw enable
Firewall is active and enabled on system startup
sysadmin@UbuntuDesktop:~$ sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
80                         ALLOW       Anywhere                  
143                        ALLOW       Anywhere                  
587                        ALLOW       Anywhere                  
110                        ALLOW       Anywhere                  
443                        ALLOW       Anywhere                  
22                         ALLOW       Anywhere                  
80 (v6)                    ALLOW       Anywhere (v6)             
143 (v6)                   ALLOW       Anywhere (v6)             
587 (v6)                   ALLOW       Anywhere (v6)             
110 (v6)                   ALLOW       Anywhere (v6)             
443 (v6)                   ALLOW       Anywhere (v6)             
22 (v6)                    ALLOW       Anywhere (v6)             

