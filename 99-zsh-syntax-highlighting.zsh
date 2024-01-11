# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### INIT ZSH SYNTAX HIGHLIGHTING
### ------------------------------------------
### This must go last in our init
### From README https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
### ".... Hooks are run in order of registration, therefore, z-sy-h must be sourced (and register its hook) after anything else that adds hooks that modify the command-line buffer"
###############################################

# Syntax highlighting
# shellcheck disable=SC1094
source "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"