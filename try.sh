#! /usr/bin/bash

if [[ "$1" == "-u" || "$1" == "update" ]]; then
	#System update command

	echo "UPDATING THE SYSTEM"
	echo "____________________________"
	echo "checking for available updates"
	sudo apt update
	echo "UPGRADING THE SYSTEM"
	sudo apt upgrade -y
	echo "___________________________"
	echo "UPDATE COMPLETED"

elif [[ "$1" == "-in" || "$1" == "install" ]]; then
	#installing a program command

	echo "Checking to install $2"
	echo "----------------------------"
	sudo apt install $2 -y

elif [[ "$1" == "-dp" || "$1" == "dpkg" ]]; then
	#debian package install

	echo "Installing debian package $2"
	echo "----------------------------"
	echo ""
	sudo dpkg -i $2
	echo ""
	echo "----------------------------"
	echo "PROCESS DONE"

else

	echo "Wrong parameter passed"
	echo "----------------------"
	echo ""
	echo "TRY FROM PARAMETERS BELOW"
	echo "try -u or update	 	for update"
	echo "try -in or install	for installing a program"
	echo "try -dp or dpkg		for installing a debian package"
	echo ""
	echo "----------------------"
	echo "MESSAGE FROM DEVELOPER"
	echo "My goal is to make linux much simple for the new users"
	echo "This is one of the program made for the same"
	echo "Development in progress new parameters will be added soon"

fi