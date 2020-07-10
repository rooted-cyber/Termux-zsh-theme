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
	
	git="$(gitp)"
ssh="$(openssh)"
php="$(phph)"
wget="$(wgett)"
python="$(pythonn)"
printf "\033[1;92m Checking git >> $git\n"
printf "\033[1;92m Checking openssh >> $ssh\n"
printf "\033[1;92m Checking php >> $php\n"
printf "\033[1;92m Checking wget >> $wget\n"
printf "\033[1;92m Checking python >> $python\n"
echo
cd ~