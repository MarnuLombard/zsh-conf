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
# remove any comdump files in default location
for ZCOMPFILE in ~/.zcompdump*; do
	rm -f "$ZCOMPFILE"
done