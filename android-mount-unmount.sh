#!/bin/bash
jmtpfs -l | grep -i -e mtp -e mtk -e mediatek -e samsung -e htc -e motorolla -e nokia -e plus -e pine
if [[ $? == 0 ]]; then
	if [[ $(id -u) == 0 ]]; then
		notify-send "WHY THE HELL ARE YOU RUNNING THIS AS ROOT?"
		exit 1
	else
		if [[ $(ls /home/$USER/phone) = "" ]]; then
			notify-send "Mounting Android phone to /home/$USER/phone"
			jmtpfs /home/$USER/phone
			if [[ $? = 0 ]]; then
				notify-send "Android mounted on /home/$USER/phone"
			else
				notify-send "Something went wrong while mounting Android fs..."
			fi
		else
			notify-send "Unmounting Android phone.."
			fusermount -u /home/$USER/phone
			if [[ $(ls /home/$USER/phone) = "" ]]; then
				notify-send "Android unmounted properly"
			else
				notify-send "Android isn't unmounted properly, better to check that out manually"
			fi
		fi
	fi
else
	notify-send "No Android phone seems to be mounted or plugged in atm"
	exit 255
fi
