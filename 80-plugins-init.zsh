# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### CONFIG VALUES AND INIT FOR ZSH PLUGINS
##############################################
#
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
export plugins=(
  git
  zsh-autosuggestions
  zsh-wakatime
  fast-syntax-highlighting
  autoupdate
)

# Auto-completion
# ---------------

# Ensure compinit is loaded
autoload -Uz compinit && compinit -i

# Enhanced `cd`
# shellcheck source=/Users/marnu/.oh-my-zsh/custom/plugins/enhancd/init.sh
source "$ZSH_CUSTOM/plugins/enhancd/init.sh"

# Calculator plugin
# shellcheck source=/Users/marnu/.oh-my-zsh/custom/plugins/calc/calc.plugin.zsh
source "$ZSH_CUSTOM/plugins/calc/calc.plugin.zsh"

# Pull in thefuck alias
# -- commented out for the sake of saving 100ms
# eval "$(thefuck --alias)"
fuck() {
  TF_PYTHONIOENCODING=$PYTHONIOENCODING
  export TF_SHELL=zsh
  export TF_ALIAS=fuck
  TF_SHELL_ALIASES=$(alias)
  export TF_SHELL_ALIASES
  TF_HISTORY="$(fc -ln -10)"
  export TF_HISTORY
  export PYTHONIOENCODING=utf-8
  TF_CMD=$(
    thefuck THEFUCK_ARGUMENT_PLACEHOLDER "$@"
  ) && eval "$TF_CMD"
  unset TF_HISTORY
  export PYTHONIOENCODING=$TF_PYTHONIOENCODING
  test -n "$TF_CMD" && print -s "$TF_CMD"
}

# load fzf completions
# shellcheck source=/Users/marnu/.config/fzf/fzf.sh
[ -f "$HOME/.config/fzf/fzf.sh" ] && source "$HOME/.config/fzf/fzf.sh"
