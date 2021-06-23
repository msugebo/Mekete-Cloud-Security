======= Start Firewalld
sysadmin@UbuntuDesktop:~$ sudo /etc/init.d/firewalld start
[ ok ] Starting firewalld (via systemctl): firewalld.service.


=======  Check status

sysadmin@UbuntuDesktop:~$ firewall-cmd --state
sysadmin@UbuntuDesktop:~$ sudo systemctl status firewalld

======= list zones
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --list-all-zones

--- dmz
--- bublic
--- home
---- blocked


====== Change zone interface
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --zone=work --change-interface=eth1
success
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --list-all-zones
	
----
work (active)
  target: default
  icmp-block-inversion: no
  interfaces: eth1
  sources: 
  services: ssh dhcpv6-client
  ports: 
  protocols: 
  masquerade: no
  forward-ports: 
  source-ports: 
  icmp-blocks: 
  rich rules: 


  ======== List all services
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --get-services
RH-Satellite-6 amanda-client amanda-k5-client bacula bacula-client bgp bitcoin bitcoin-rpc bitcoin-testnet bitcoin-testnet-rpc ceph ceph-mon cfengine condor-collector ctdb dhcp dhcpv6 dhcpv6-client dns docker-registry docker-swarm dropbox-lansync elasticsearch freeipa-ldap freeipa-ldaps freeipa-replication freeipa-trust ftp ganglia-client ganglia-master git high-availability http https imap imaps ipp ipp-client ipsec irc ircs iscsi-target kadmin kerberos kibana klogin kpasswd kprop kshell ldap ldaps libvirt libvirt-tls managesieve mdns minidlna mosh mountd ms-wbt mssql murmur mysql nfs nfs3 nrpe ntp openvpn ovirt-imageio ovirt-storageconsole ovirt-vmconsole pmcd pmproxy pmwebapi pmwebapis pop3 pop3s postgresql privoxy proxy-dhcp ptp pulseaudio puppetmaster quassel radius redis rpc-bind rsh rsyncd samba samba-client sane sip sips smtp smtp-submission smtps snmp snmptrap spideroak-lansync squid ssh synergy syslog syslog-tls telnet tftp tftp-client tinc tor-socks transmission-client vdsm vnc-server wbem-https xmpp-bosh xmpp-client xmpp-local xmpp-server zabbix-agent zabbix-server
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --zone=work --add-rich-rule='rule family='ipv4' source address="10.10.0.10" reject'
success
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --list-services
ssh dhcpv6-client
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --list-all-zones

---
work (active)
  target: default
  icmp-block-inversion: no
  interfaces: eth1
  sources: 
  services: ssh dhcpv6-client
  ports: 
  protocols: 
  masquerade: no
  forward-ports: 
  source-ports: 
  icmp-blocks: 
  rich rules: 
	rule family="ipv4" source address="10.10.0.10" reject


	=== block icmp  ===
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --zone=work --add-icmp-block=echo-reply --add-icmp-block=echo-request
success
sysadmin@UbuntuDesktop:~$ sudo firewall-cmd --list-all-zones
---
work (active)
  target: default
  icmp-block-inversion: no
  interfaces: eth1
  sources: 
  services: ssh dhcpv6-client
  ports: 
  protocols: 
  masquerade: no
  forward-ports: 
  source-ports: 
  icmp-blocks: echo-reply echo-request
  rich rules: 
	rule family="ipv4" source address="10.10.0.10" reject


