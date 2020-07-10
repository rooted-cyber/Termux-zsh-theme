cc() {
	cd $PREFIX
	}
	ch() {
		cc
		if [ -e theme ];then
		printf "\n Starting command : theme \n"
		fi
		}
	setup() {
		printf "\n\033[1;92m [+] Updating packages \n"
		apt update && apt upgrade
		apt --fix-broken install
		dpkg --configure -a
		clear
		printf "\n Installing python\n"
		apt install python
		clear
		printf "\n Installing figlet & toilet\n"
		apt install figlet toilet
		clear
		printf "\n Installing zsh\n"
		apt install zsh
		clear
		printf "\n\033[1;93m Installing Tool requirements\n"
		cd ~
		mkdir Termux-zsh-theme\ installed
		cd ~/Termux-zsh-theme/deb
		dpkg -i *deb
		ch
		sett
		}
	sett() {
		cc
		cd share/figlet
		if [ -e font.flf ];then
		printf "\n\033[1;92m All requirements installed\n"
		else
		setup
		fi
		}
		sett
	