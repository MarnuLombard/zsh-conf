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

# Not the greatest
# @TODO: clean up/simplify/better
export OSTYPE;
if [[ "$(uname)" == "Darwin" ]]; then
	OSTYPE="Darwin";
elif [[ "${$(uname -s):0:5}" == "Linux" ]]; then
	OSTYPE="Linux";
fi


# Load iTerm3 config if it exists
if [[ "$OSTYPE" == "Darwin" && -f /Users/marnu/.config/iterm2_shell_integration.zsh ]]; then
  source /Users/marnu/.config/iterm2_shell_integration.zsh;
fi
