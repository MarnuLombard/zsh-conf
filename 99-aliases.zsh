##############################################
### CUSTOM ALIASES
###############################################

# For a full list of active aliases, run `alias`.

# drop the _ = sudo alias
unalias _;

# drop the g = git alias
unalias g;

# https://github.com/sindresorhus/trash-cli
alias rm=trash

if [[ "$OSTYPE" = "Darwin" ]]; then
	# Use brew install whois instead of debian whois that comes with osx
	alias whois=/usr/local/bin/whois;
fi;

# Replace default vim install with NeoVim
# https://neovim.io/
alias vim=nvim

# https://github.com/supercrabtree/k
# K is the new L
alias ll='k -ah --no-vcs'

# Generate random password of length $stdin
# @source http://www.commandlinefu.com/commands/view/7949/generate-random-password-works-on-mac-os-x
alias passwd='env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?\+-\.,\^&\*\(\);\\\/\|<>" < /dev/urandom | head -c '

# Make grep better
alias grep='ggrep'
# Quick access to grep
alias -g G='| grep -i'

# MacOS does not ship with tailf
alias tailf='tail -f'
# Quick access to tail
alias T='tailf -n 300'

# Flush dns cache
alias flushdns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'

# Laravel's cli
alias artisan='php artisan'

# Composer 
alias cda='composer dumpautoload'

# Fkill - Fabulously kill processes
# https://github.com/sindresorhus/fkill-cli
alias kill='fkill'

# Reset && clear scroll buffer to be the default behaviour
alias reset='clear && printf "\e[3J"'


# Delete all branches that no longer exist on remote
# more elegant solution would be to add as [alias] under ~/.gitconfig

# does not work
alias git_clean="git checkout master \
  && git fetch --prune \
  && git pull \
  && git branch --merged | grep -v '\*' | xargs git branch -d"


# As grabbed from Bash-it - https://github.com/Bash-it/bash-it/
# to use it just install xclip on your distribution and it would work like:
# $ echo "hello" | pbcopy
# $ pbpaste
# hello

# very useful for things like:
# cat ~/.ssh/id_rsa.pub | pbcopy
if [[ $OSTYPE == "Linux" ]]; then
    XCLIP=$(command -v xclip)
    [[ $XCLIP ]] && alias pbcopy="\$XCLIP -selection clipboard" && alias pbpaste="\$XCLIP -selection clipboard -o";
fi
