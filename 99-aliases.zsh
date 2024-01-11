# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### CUSTOM ALIASES
###############################################

# For a full list of active aliases, run `alias`.

# drop the _ = sudo alias
unalias _

# drop the g = git alias
unalias g
# add access to `git trim`
# (Also aliased here as git_cleaned for legacy reasons)
alias gt='git trim'

# https://github.com/sindresorhus/trash-cli
alias rm=trash

# Replace default vim install with NeoVim
# https://neovim.io/
alias vim=nvim

# https://github.com/Peltoche/lsd
alias ll='lsd -la'

# Generate random password of length $stdin
# @source http://www.commandlinefu.com/commands/view/7949/generate-random-password-works-on-mac-os-x
alias passwd='env LC_CTYPE=C gtr -dc "a-zA-Z0-9-_\$\?\+-\.,\^&\*\(\);\\\/\|<>" < /dev/urandom | head -c '

# Use brew install whois instead of debian whois that comes with osx
# alias instead of relying on path, brew will not replace whois
alias whois='gwhois'
alias grep='ggrep --color=auto'

# Colours
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Quick access to grep
alias -g G='| grep -i'

# MacOS does not ship with tailf
alias tailf='tail -f'
# Quick access to tail
alias T='tailf -n 300'

# Replace cat with bat. https://github.com/sharkdp/bat
alias cat='bat'

# Flush dns cache
alias flushdns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'

# Laravel's cli
alias artisan='php artisan'

# Composer
alias cda='composer dumpautoload'

# Reset && clear scroll buffer to be the default behaviour
alias reset='clear && printf "\e[3J"'

# Simplify access to custom `dockerin` script
alias di='dockerin'

# Delete all branches that no longer exist on remote, and have been merged into master
alias git_clean="git trim"

# Simple date format in standard format
alias ymd='date +"%Y-%m-%d"'
alias his='date +"%H:%M:%S"'
alias now='echo "$(ymd) $(his)"'
