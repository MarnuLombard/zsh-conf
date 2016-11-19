##############################################
### CONFIG VALUES AND INIT FOR ZSH PLUGINS
##############################################

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( \
  git \
  zsh-autosuggestions \
  docker \
  thefuck \
  k \
)

# Enhanced `cd`
source $ZSH_CUSTOM/plugins/enhancd/init.sh
[ -f $CONFIG_PATH/fzf/fzf.zsh ] && source $CONFIG_PATH/fzf/fzf.zsh

# Calculator plugin
source $ZSH_CUSTOM/plugins/calc/calc.plugin.zsh

# Pull in thefuck alias
eval "$(thefuck --alias)"
