# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
## INIT OF THE OH-MY-ZSH FRAMEWORK
##############################################

# Load the oh-my-zsh init script
source "$ZSH/oh-my-zsh.sh"

# Set up different storage location for zcompdump files
# Used by the zsh completion system to speed up completion
Z_COMP_DFILE=~/.config/zsh/compinit/.zcompdump;
if [[ -f "$Z_COMP_DFILE" ]]; then
	compinit -d "$Z_COMP_DFILE";
fi
# Turns out finding files by wildcard is really bloody tricky.
# Especially without using absolute paths
# Using `find` works, but it's so slow
# prevent errors on no match, but re-enable it later on (I'm unsure about scope of unsetopt)
unsetopt nomatch;
# Will silently match or not match - but uses zsh globbing built in
# Do not double quote this
set -- $HOME/.zcompdump*
# Now we check for a match
if [ -f "$1" ]; then
	# remove any comdump files in default location
	for ZCOMPFILE in ~/.zcompdump*; do
		rm -f "$ZCOMPFILE"
	done
fi
setopt nomatch;