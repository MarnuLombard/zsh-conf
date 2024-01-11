# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##################################################
### CONFIG VALUES FOR USER-SPECIFIC CUSTOMISATION
##################################################

## Set Up $PATH var
export PATH

# Homebrew
eval "$($BREWBASE/bin/brew shellenv)"
export HOMEBREW_BAT=true
# Set in 00-private-env-vars.zsh
export HOMEBREW_GITHUB_API_TOKEN="${GITHUB_TOKEN}"

# Add homebrew installed icu4c env vars
export LDFLAGS="-L$BREWBASE/opt/icu4c/lib"
export CPPFLAGS="-I$BREWBASE/opt/icu4c/include"
export PKG_CONFIG_PATH="$BREWBASE/opt/icu4c/lib/pkgconfig"
export PATH="$BREWBASE/opt/icu4c/bin:$PATH"
export PATH="$BREWBASE/opt/icu4c/sbin:$PATH"

# NodeJS
export NODE_ENV='development'
export NVM_DIR="$HOME/.config/nvm"
export PATH="./node_modules/.bin:$PATH"

# If we have the gnu-utils, add them to the path
if [[ -d "$BREWBASE/opt/findutils/libexec/gnubin" ]]; then
	# Add them ahead of other dirst to override other utils
	PATH="$BREWBASE/opt/findutils/libexec/gnubin:$PATH"
fi

# Manpages
export MANPATH="$BREWBASE/man:$MANPATH"

# For Shellcheck binary
# https://github.com/koalaman/shellcheck
# -- Set our shell as bash
export SHELLCHECK_OPTS
SHELLCHECK_OPTS='--shell=bash'
# -- Set which exclude types of warnings
SHELLCHECK_OPTS="$SHELLCHECK_OPTS --exclude=SC2148,SC1091,SC1090"
