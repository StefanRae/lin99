#!/bin/bash

show_menu() {
	echo "Wat mot beuren?"
	echo "1) Restart"
	echo "2) Power Off"
	echo "3) Cancel"
	read -p "please enter choice: " choice
}

while true; do
	show_menu
	case $choice in
		1) 
			echo "Restarting"
			reboot
			break
			;;
		2)
			echo "Powering off"
			poweroff
			break
			;;
		3)
			echo "Cancel"
			break
			;;
		*)
			echo "Nibba wat doe je"
			;;
	esac
done
