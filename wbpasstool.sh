#!/bin/bash
while true;
do
	clear
	echo "***************************************************"
	echo "*************** WEST BRANCH PASSWORD **************"
	echo "***************   UPDATE TOOL V1.0   **************"
	echo "***************************************************"
	echo
	echo "Please follow the prompts to update your WB Account"
	echo "---------------------------------------------------"
	echo
	echo "Please enter your username (EX: 120123 OR jsmith)"
	read user
	echo "*************************************************"
	echo "$user, you will now be prompted to change your WB"
	echo "password. A good password is 8+ characters with"
	echo "a mix of numbers and special characters."
	echo "*************************************************"

	smbpasswd -U $user -r wolverine.westbranch.org

	echo "*************************************************"
	read -r -p "Was password change successful? [Y/n] " input

	case $input in
	    [yY][eE][sS]|[yY])
			clear
			exit
			;;
	    [nN][oO]|[nN])
			echo "..."
			;;
	    *)
		echo "INVALID INPUT (Enter Y or N)"
		;;
	esac
done
