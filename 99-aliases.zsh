##############################################
### CUSTOM ALIASES & EXPORT VARIABLES
###############################################

# For a full list of active aliases, run `alias`.

# https://github.com/sindresorhus/trash-cli
alias rm=trash

# Composer alias
alias cda='composer dumpautoload'

# Laravel's cli
alias artisan='php artisan'

# Laravel's REPL / Psysh 
tinker() {
	if [[ -f ./artisan ]]; then
		php artisan tinker
	else
		psysh 
	fi
} 

# K is the new L
alias ll='k -ah --no-vcs'

# Easier grep
alias -g G='| grep -i '

# As grabbed from Bash-it - https://github.com/Bash-it/bash-it/
# to use it just install xclip on your distribution and it would work like:
# $ echo "hello" | pbcopy
# $ pbpaste
# hello

# very useful for things like:
# cat ~/.ssh/id_rsa.pub | pbcopy
case $OSTYPE in
  linux*)
    XCLIP=$(command -v xclip)
    [[ $XCLIP ]] && alias pbcopy="$XCLIP -selection clipboard" && alias pbpaste="$XCLIP -selection clipboard -o"
    ;;   
esac


# Uppercase first letter
# see http://stackoverflow.com/questions/12487424/uppercase-first-character-in-a-variable-with-bash
function ucfirst() {
	echo "$(tr '[:lower:]' '[:upper:]' <<< ${1:0:1})${1:1}" 
}
