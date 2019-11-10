##############################################
### CONFIG VALUES AND INIT FOR ZSH PLUGINS
##############################################
#
#
# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
export plugins=( \
  git \
  zsh-autosuggestions \
  thefuck \
  k \
  zsh-iterm-touchbar \
  alias-tips \
  zsh-wakatime \
)

# Enhanced `cd`
source "$ZSH_CUSTOM/plugins/enhancd/init.sh"

# Calculator plugin
source "$ZSH_CUSTOM/plugins/calc/calc.plugin.zsh"

# Pull in thefuck alias
eval "$(thefuck --alias)"

# Auto-completion
# ---------------

# Ensure compinit is loaded
autoload -Uz compinit && compinit -i

# load fzf completions
[ -f "$CONFIG_PATH/fzf/fzf.zsh" ] && source "$CONFIG_PATH/fzf/fzf.zsh"
[[ $- == *i* ]] && source "$HOME/.config/fzf/shell/completion.zsh" 2> /dev/null

# load taskwarrior completetions

# Key bindings
# ------------
if [[ -f $HOME/.config/fzf/shell/key-bindings.zsh ]]; then
 source "$HOME/.config/fzf/shell/key-bindings.zsh";
fi