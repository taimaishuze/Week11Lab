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
    2 - host/ping/ports
    3 - netstat -nt/iptables/arp
    4 - 

    0 - exit program
"
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1) echo "Host IP address is....."; echo ""; ifconfig; sleep 2; echo "";
	echo "Routing table....."; echo ""; route -n; sleep 2; echo "";
	echo "traceroute to St Paul College....."; echo ""; traceroute www.saintpaul.edu; sleep 2; echo "";
	echo "Let's move on to the other options."; echo ""; sleep 2; press_enter ;;
        2) echo "Locating St Paul College IP address....."; echo ""; host www.saintpaul.edu; sleep 2; echo "";
	echo "Pinging St Paul College....."; echo ""; ping 204.77.53.33; sleep 2; echo "";
	echo "TCP ports and connections....."; echo ""; netstat -nt; sleep 2; echo "";
	echo "Let's try other options."; echo ""; sleep 2; press_enter ;;
      	3) echo "Displaying system info....."; echo ""; sudo dmesg; sleep 2; echo "";
	echo "Displaying CPU information....."; echo ""; sudo dmesg | grep -i CPU; sleep 2; echo "";
	echo "Displaying USB information....."; echo ""; sudo dmesg | grep -i USB; sleep 2; echo "";
	echo "dmesg is best used with pipe less command.  Let's move on to another option"; sleep 2; press_enter ;;
	4) echo "Update using sudo apt-get update"; echo ""; sleep 2;
	echo "Turn on firewall using sudo ufw enable"; echo ""; sleep 2;
	echo "Restart your OS with sudo shutdown -r now or set a countdown option"; echo ""; sleep 2;
	echo "Shutdown your computer with sudo shutdown now or init 0"; echo ""; sleep 2;
	echo "Try and restart or shut down your computer from the command line next time"; echo ""; sleep 2;
        echo "For further help, use the 'man' command"; echo ""; sleep 2; press_enter ;;
	0) exit ;;
        *) echo "Please select 1, 2, 3, or 4 to view contents (0 to exit)"; press_enter
    esac
done
