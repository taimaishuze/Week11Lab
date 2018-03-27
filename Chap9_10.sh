#!/bin/bash
# Vang Lee

# Week 11 CSCI 2461 Computer Networking 2 - Linux
# Chapter 9 and 10

# menu

press_enter()
{
    echo -en "\nPress ENTER to continue"
    read
    clear
}

selection=
until [ "$selection" = "0" ]; do
    echo "
    Program Menu
    1 - ifconfig/route -n/traceroute
    2 - host/ping/netstat -nt
    3 - iptables/arp
    4 - telnet/lsof
    
    0 - exit program
"
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1) echo "Host IP address is....."; echo ""; ifconfig; sleep 2; echo "";
	echo "Routing table....."; echo ""; route -n; sleep 2; echo "";
	echo "Installing traceroute and then traceroute to St Paul College....."; echo ""; sudo apt-get install traceroute && traceroute www.saintpaul.edu; sleep 2; echo "";
	echo "Let's move on to the other options."; echo ""; sleep 2; press_enter ;;
        2) echo "Locating St Paul College IP address....."; echo ""; host www.saintpaul.edu; sleep 2; echo "";
	echo "Pinging St Paul College....."; echo ""; ping 204.77.53.33; sleep 2; echo "";
	echo "TCP ports and connections....."; echo ""; netstat -nt; sleep 2; echo "";
	echo "Let's try other options."; echo ""; sleep 2; press_enter ;;
      	3) echo "Displaying iptables....."; echo ""; iptables -L; sleep 2; echo "";
	echo "ARP tables....."; echo ""; arp; sleep 2; echo "";
	echo "Let's move on to chapter 10....."; sleep 2; press_enter ;;
	4) echo "Using telnet to connect to www.saintpaul.edu....."; telnet www.saintpaul.edu 80; sleep 2; echo "";
	echo "List of programs using or listening to ports....."; lsof -l | less; sleep 2; echo "";
	echo "This concludes the chapter 9 and 10 script....."; sleep 2; press_enter ;;
	0) exit ;;
        *) echo "Please select 1, 2, 3, or 4 to view contents (0 to exit)"; press_enter
    esac
done
