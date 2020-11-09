# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash
###########################
### CONFIG VALUES FOR SSH
###########################

export SSH_KEY_PATH="$HOME/.ssh/id_rsa"

# Uncomment the following line to set $EDITOR for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Add ssh key to ssh-agent
ssh-add -A 2>/dev/null;
