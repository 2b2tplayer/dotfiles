export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH
ZSH_THEME="alanpeabody"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#study aliases
declare -A pomo_options
pomo_options["work"]="52"
pomo_options["break"]="17"

pomodoro () {
	if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
	val=$1
	echo $val | lolcat
        timer ${pomo_options["$val"]}m
        fi
}
alias torstop="sudo torctl stop"
alias torstart="sudo torctl start"
alias work="pomodoro 'work'"
alias break="pomodoro 'break'"
alias sign="gpg --clear-sign --personal-digest-preferences SHA512"
alias storage="pacman -Qi | egrep '^(Name|Installed)' | cut -f2 -d':' | paste - - | column -t | sort -nrk 2 | grep MiB | less"
