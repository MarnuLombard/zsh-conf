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
ssh-add -A 2>/dev/null

# Change profiles when we ssh into servers
# See https://coderwall.com/p/t7a-tq/change-terminal-color-when-ssh-from-os-x

if [[ $TERM_PROGRAM = 'iTerm.app' ]]; then

	# DEFAULT_PROFILE='Default';
	# PRODUCTION_PROFILE='Production';
	# STAGING_PROFILE='Development';

	# function setItermProfile() {
	# 	local NAME;
	# 	NAME=$1;
	# 	if [[ -z "$NAME" ]]; then
	# 		NAME="$DEFAULT_PROFILE";
	# 	fi
	# 	# if you have trouble with this, change
	# 	# "Default" to the name of your default theme
	# 	echo -e "\033]50;SetProfile=$NAME\a"
	# }

	# function resetItermProfile() {
	# 	echo -e "\033]50;SetProfile=$DEFAULT_PROFILE\a"
	# }

	# function colorssh() {
	#     if [[ -n "$ITERM_SESSION_ID" ]]; then
	#     	if [[ -z "${PRODUCTION_HOSTS_REGEX}" || -z "${STAGING_HOSTS_REGEX}" ]]; then
	# 			clr_red " Error:
	# 			We need both 'PRODUCTION_HOSTS_REGEX' and 'STAGING_HOSTS_REGEX defined for our profile auto-switching to work.
	# 			Disabling for now.";

	# 			return;
	# 		fi

	#         if [[ "$*" =~ $PRODUCTION_HOSTS_REGEX ]]; then
	#             setItermProfile "$PRODUCTION_PROFILE";
	#         elif [[ "$*" =~ $STAGING_HOSTS_REGEX ]]; then
	#             setItermProfile "$STAGING_PROFILE";
	#         else
	#             setItermProfile "$DEFAULT_PROFILE";
	#         fi
	#     fi

	#     /usr/bin/ssh "$@"; resetItermProfile;
	# }
	# if [[ -z $(which compdef) ]]; then compdef _ssh setItermProfile=ssh; fi

	# alias ssh="colorssh"
fi
