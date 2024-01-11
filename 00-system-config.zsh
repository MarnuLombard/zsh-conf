# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### CONFIG VALUES FOR SYSTEM VALUES
###############################################

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Terminal definition
export TERM=xterm-256color

# Where to store nmap config
export NMAPDIR=~/.config/nmap

# Default text editor for cli
export EDITOR=nvim

OSTYPE="Darwin"
export OSTYPE

# Homebrew on M1 Macs
if [[ -d /opt/homebrew/ ]]; then
    BREWBASE="/opt/homebrew"
else
    BREWBASE="/usr/local"
fi

export TZ="Africa/Johannesburg"

# Load iTerm config if it exists
if [[ "$OSTYPE" == "Darwin" && -f "${HOME}/.iterm2_shell_integration.zsh" ]]; then
    # shellcheck source=/Users/marnu/.iterm2_shell_integration.zsh
    source "${HOME}/.iterm2_shell_integration.zsh"
fi

# Colours in `man`
# See https://drasite.com/blog/Pimp%20my%20terminal
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Use a higher ulimit
# Default of 256 is too low for mariadb
# See https://gist.github.com/devinrhode2/4cbf7f02a9701510d61f5be0515b8286
# ulimit -n 200000 <-- can only be run as root
ulimit -u 2048

# Load colour functions into the env
source "/usr/local/bin/header/.bash_colors"

# May be respected, but often not.
# See https://consoledonottrack.com
export DO_NOT_TRACK=1
export HOMEBREW_NO_ANALYTICS=1
