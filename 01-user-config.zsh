##################################################
### CONFIG VALUES FOR USER-SPECIFIC CUSTOMISATION
##################################################


## Set Up $PATH var 
export PATH;
PATH="/usr/local/bin:/usr/local/opt:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
# Add composer path
PATH="$PATH:$HOME/.composer/vendor/bin"
# Add npm path
#PATH="$PATH:/usr/local/bin"
# Add yarn's path
#PATH="$PATH:/usr/local/bin"
# Add homebrew installed icu4c path
PATH="/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"


# set up JENV
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Java Runtime config
# -- Managed with jenv pluin export
#if [[ -f /usr/libexec/java_home ]]; then
#   export JAVA_HOME;
#   JAVA_HOME=$(/usr/libexec/java_home -v "$(jenv version-name)")
#fi
if [[ -f /opt/jboss ]]; then
    export JBOSS_HOME;
    JBOSS_HOME="/opt/jboss";
fi


# If we have the gnu-utils, add them to the path
if [[ -d /usr/local/opt/findutils/libexec/gnubin ]]; then
	# Add them ahead of other dirst to override other utils
	PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH";
fi
# If we have the php-pear, add it to the path
if [[ -d /usr/local/pear/bin ]]; then
	PATH="/usr/local/pear/bin:$PATH";
fi

# Manpages
export MANPATH="/usr/local/man:$MANPATH"

# Electron. Only needed on Darwin
if [[ $OSTYPE == "Darwin" ]]; then
	export ELECTRON_PATH;
	ELECTRON_PATH="/Applications/Electron.app/Contents/MacOS/Electron";
fi


# For Shellcheck binary
# https://github.com/koalaman/shellcheck
# -- Set our shell as bash
export SHELLCHECK_OPTS;
SHELLCHECK_OPTS='--shell=bash'
# -- Set which exclude types of warnings
SHELLCHECK_OPTS="$SHELLCHECK_OPTS --exclude=SC2148,SC1091,SC1090"