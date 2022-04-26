#!/bin/bash
/usr/bin/echo "######################## FIREWALLS INFO ###############################" >> /tmp/firewallsinfo
/usr/bin/systemctl disable firewalld
/usr/bin/systemctl status firewalld >> /tmp/firewallsinfo
/usr/sbin/sestatus >> /tmp/firewallsinfo
/usr/sbin/iptables -F
/usr/bin/echo "######################## HOSTNAME SETUP #########################" >> /tmp/firewallsinfo
/usr/bin/echo "192.168.1.125    satish  satish.ashok.ins.com " > /etc/hosts
/usr/bin/cat  /etc/hostname >> /tmp/firewallsinfo
/usr/bin/hostname satish.ashok.ins.com
/usr/bin/cat  /etc/hosts >> /tmp/firewallsinfo
/usr/bin/echo "###################### SYSTEM INFORMATION #####################" >> /tmp/firewallsinfo
/usr/sbin/parted -l >> /tmp/firewallsinfo
/usr/bin/netstat -rn >> /tmp/firewallsinfo
/usr/bin/df -h >> /tmp/firewallsinfo
/usr/bin/echo " ######################USER INFORMATION #######################" >> /tmp/firewallsinfo
/usr/bin/cat /etc/passwd >> /tmp/firewallsinfo
/usr/bin/cat /etc/shadow >> /tmp/firewallsinfo
/usr/bin/cat /etc/group >> /tmp/firewallsinfo
/usr/bin/echo " #######################NETWORK SETUP #######################" >> /tmp/firewallsinfo
/usr/bin/cat /tmp/ifcfg-ens33 > /etc/sysconfig/network-scripts/ifcfg-ens33
/usr/bin/systemctl reboot
/usr/sbin/ifconfig -a >> /tmp/firewallsinfo
