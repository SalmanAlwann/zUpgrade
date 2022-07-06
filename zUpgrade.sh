#!/usr/bin/bash

# Functions

welcome() {
	echo -e "\t\033[1;31m[\033[1;37m+\033[1;31m]\033[11;37m Welcome To The \033[1;5;31mzUgrade.sh\033[1;0;37m." | pv -qL 30
}

apt_update() {
	banner
	echo -e "\t\033[1;31m[\033[1;37m$\033[1;31m]\033[11;37m Running \033[1;31mapt update -y\033[1;37m." | pv -qL 30
	sudo apt update -y
}
apt_full_upgrade() {
	banner
        echo -e "\t\033[1;31m[\033[1;37m$\033[1;31m]\033[11;37m Running \033[1;31mapt full-upgrade -y\033[1;37m." | pv -qL 30
        sudo apt full-upgrade -y
}
apt_autoremove() {
	banner
        echo -e "\t\033[1;31m[\033[1;37m$\033[1;31m]\033[11;37m Running \033[1;31mapt autoremove -y\033[1;37m." | pv -qL 30
        sudo apt autoremove -y
}
apt_clean() {
	banner
        echo -e "\t\033[1;31m[\033[1;37m$\033[1;31m]\033[11;37m Running \033[1;31mapt clean -y\033[1;37m." | pv -qL 30
        sudo apt clean -y
}
apt_autoclean() {
	banner
        echo -e "\t\033[1;31m[\033[1;37m$\033[1;31m]\033[11;37m Running \033[1;31mapt autoclean -y\033[1;37m." | pv -qL 30
        sudo apt autoclean -y
}
check_root() {
	if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    		banner
		echo -e "\t\033[1;31m[\033[1;37m#\033[1;31m]\033[11;37m Run it as \033[1;31mroot\033[1;37m :)" | pv -qL 30
    		exit
	fi

}
banner() {
	clear
	cat src/Logo.txt
}

# Clearing The Screen
banner
welcome
check_root
sleep 0.5

# commands
apt_update
apt_full_upgrade
apt_autoremove
apt_clean
apt_autoclean
