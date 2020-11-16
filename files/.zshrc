clear
source ~/Termux-zsh-theme\ installed/theme2.sh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
#source ~/.draw
source ~/Termux-zsh-theme\ installed/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/Termux-zsh-theme\ installed/zsh-autosuggestions/zsh-autosuggestions.zsh
printf "\n\033[1;93m=========================================================\n"
printf "     \033[0mhttps://github.com/rooted-cyber/Termux-zsh-theme"
printf "\n\033[1;93m=========================================================\n"
source ~/Termux-zsh-theme\ installed/checking.sh
alias a='apt install'
alias p='python'
alias p2='python2'
alias ad='apt download'
alias p3='python3'
alias g='git clone'
alias ap='apt update && apt upgrade'
i() {
echo -e -n "\033[1;92m Enter tool name : \033[0m"
read a
if [ $a ];then
git clone https://github.com/rooted-cyber/$a
fi
}
