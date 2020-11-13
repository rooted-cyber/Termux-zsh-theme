fo() {
	cd $PREFIX/bin
	}
	ha() {
		printf "\033[1;96m[√] \033[1;93minstalled"
		}
		na() {
			printf "\033[1;91m[×] Not installed!! "
			}
			gitp() {
	cd $PREFIX/bin
	if [ -e git ];then
	ha
	else
	na
	fi
	}
	phph() {
	fo
	if [ -e php ];then
	ha
	else
	na
	fi
	}
pythonn() {
	fo
	if [ -e python ];then
	ha
	else
	na
	fi
	}
	wgett() {
	fo
	if [ -e wget ];then
	ha
	else
	na
	fi
	}


	openssh() {
	fo
	if [ -e ssh ];then
	ha
	else
	na
	fi
	}
	pippp() {
		fo
		if [ -e pip ];then
		ha
		else
		na
		fi
		}
		pippp2() {
		fo
		if [ -e pip2 ];then
		ha
		else
		na
		fi
		}
		pippp3() {
		fo
		if [ -e pip3 ];then
		ha
		else
		na
		fi
		}
	
	git="$(gitp)"
ssh="$(openssh)"
php="$(phph)"
wget="$(wgett)"
python="$(pythonn)"
pipp="$(pippp)"
pipp2="$(pippp2)"
pipp3="$(pippp3)"

ii="$(curl -s -N ifconfig.me)"
#printf "\n\t\t\t\033[1;92m Your IP :\033[1;97m $ii\n"
printf "\n\033[1;92m Checking git >> \033[0m $git\n"
#printf "\033[1;92m Checking openssh >> $ssh\n"
#printf "\033[1;92m Checking php >> $php\n"
printf "\033[1;92m Checking wget >> \033[0m $wget\n"
printf "\033[1;92m Checking python >> \033[0m $python\n"
printf "\033[1;92m Checkin pip >> \033[0m $pipp\n"
printf "\033[1;92m Checking pip2 >> \033[0m $pipp2\n"
printf "\033[1;92m Checking pip3 >> \033[0m $pipp3\n"

echo
cd ~