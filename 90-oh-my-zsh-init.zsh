##############################################
## INIT OF THE OH-MY-ZSH FRAMEWORK
##############################################

# Load the oh-my-zsh init script
source $ZSH/oh-my-zsh.sh


# Set up different storage location for zcompdump files
# Used by the zsh completion system to speed up completion
compinit -d ~/.config/zsh/compinit/.zcompdump
# remove any comdump files in default location
if [[ -f ~/.zcompdump* ]]; then
    rm -f ~/.zcompdump*
fi
