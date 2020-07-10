banner() {
	clear
	cd $PREFIX/share/figlet
	if [ -e font.flf ];then
	clear
	else
	printf "\n\n\033[1;97m First install requirements!! \n\n"
	fi
	random
	toilet -f font \  
	toilet -f font zsh-look
	
	printf "\n\033[1;92m[\033[0m::\033[1;92m]	\033[1;96mCreated by : \033[1;97mhttps://github.com/rooted-cyber	\033[1;92m[\033[0m::\033[1;92m]\n"
	}
	me() {
		clear
				random
				figlet -f font About
				random
				printf "\n\n This tool created by :\033[0m https://github.com/rooted-cyber( Maruf )\n"
				random
				printf "\nThis tool uploaded :\033[0m 10 july 2020\n"
				random
				printf "\nContact me :\n\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Facebook ID : \033[1;97m https://www.facebook.com/maruf.alam.94043626\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram 1st Bot : \033[1;97m https://t.me/rootedcyber_bot\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram 2nd Bot : \033[1;97m https://t.me/rootedcyber2_bot\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Facebook page : \033[1;97m https://www.facebook.com/rootedcyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Instagram ID : \033[1;97m https://www.instagram.com/rootedcyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Github link : \033[1;97m https://hithub.com/rooted-cyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram Group : \033[1;97m https://t.me/rootedcyber1\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m My blog : \033[1;97m https://rootedcyber.blogspot.com\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Whatsapp Group : \033[1;97m https://chat.whatsapp.com/BdCWDT2g35y67yV8DNHvfa\n\n"
				}
	zsh-theme() {
		check
		printf "\n\033[1;92m Enter you name :\033[0m "
		read c
		if [ ! -z $c ];then
		sleep 1
		printf "\n\033[1;93m[\033[0m*\033[1;93m]\033[1;92m S"
		sleep 0.5
		printf "e"
		sleep 0.5
		printf "t"
		sleep 0.5
		printf "u"
		sleep 0.5
		printf "p"
		sleep 0.5
		printf "i"
		sleep 0.5
		printf "n"
		sleep 0.5
		printf "g"
		sleep 0.6
		printf " "
		sleep 0.6
		printf "t"
		sleep 0.6
		printf "h"
		sleep 0.6
		printf "e"
		sleep 0.6
		printf "m"
		sleep 0.6
		printf "e"
		sleep 0.6
		printf " ....\n"
		printf "\ntoilet -f font -F border \ $c\ \n" >> ~/Termux-zsh-theme/files/theme.sh
		printf "\n\033[1;92m[√]\033[1;93m setuping complete!\n"
		printf "\n\033[1;96m Now setuping auto suggession and highlighting\n"
		cd ~/Temux-zsh-theme\ installed > /dev/null 2>&1
		printf "\n\033[1;93m Cloning Auto Suggession\n\n"
		git clone https://github.com/zsh-users/zsh-autosuggestions
		printf "\n\033[1;93m Cloning Highlighting\n\n"
		git clone https://github.com/zsh-users/zsh-syntax-highlighting
		printf "\nCloning ohmyzsh\n\n"
		cd ~
		git clone https://github.com/ohmyzsh/ohmyzsh
		mv ohmyzsh .oh-my-zsh
		cd ~/Termux-zsh-theme/files
		
		cp -f .zshrc ~
		cp -f checking.sh ~/Termux-zsh-theme\ installed
		chsh -s zsh
		sed -e "s/\Maruf/$c/g" theme.sh > theme2.sh
		cp -f theme2.sh ~/Termux-zsh-theme\ installed
		printf "\nCompleted , Now restart\n"
		fi
		}
		theme-uninstall () {
			cd ~
			if [ -e Termux-zsh-theme ];then
			rm -rf Termux-zsh-theme
			rm -f .zshrc
			chsh -s bash
			else
			printf "\n\n\033[1;91m Sorry , Termux Zsh theme is not installed !!! \n\n"
			fi
			}
	menu () {
		banner
		printf "\n\033[1;92m[\033[0m1\033[1;92m]\033[1;93m Termux-zsh theme install\n"
		printf "\033[1;92m[\033[0m2\033[1;92m]\033[1;93m Termux-zsh theme uninstall\n"
		printf "\033[1;92m[\033[0m3\033[1;92m]\033[1;93m About me\n"
		printf "\033[1;92m[\033[0m4\033[1;92m]\033[1;93m Exit\n\n\n"
		printf "\033[1;96mzsh\033[0m@\033[1;92mTheme \033[0m%s --> "
		read b
		case $b in
		1)zsh-theme ;;
		2)theme-uninstall ;;
		3)me ;;
		4)exit ;;
		*)menu ;;
		esac
		}
		check() {
			cd ~
			if [ -e .zshrc ];then
			printf "\n\033[1;92m Other zsh theme is already installed !! \n\n"
			exit
			fi
			}
		menu
		