# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### CUSTOM FUNCTIONS
###############################################

# Alias to Laravel's cli if in a Laravel dir,
# Else call the global install of `artisan`'s underlying PsySh

function tinker() {
  if [[ -f $(pwd)/artisan ]]; then
    php artisan tinker
  else
    psysh
  fi
}

export BRANCH
# Store in an env var a branch name to be refered to later
function save_branch() {
  BRANCH=$(git rev-parse --abbrev-ref HEAD)

  return 0
}

# unarchiver function
# - expects: compressed filename
# See:
#   - https://github.com/rccggl/macOS_settings/blob/master/.shells/functions
#   - https://www.scip.ch/en/?labs.20180712
function extract() {
  if [ -f "$1" ]; then
    case "$1" in
    *.tar.bz2) tar xjf "$1" ;;
    *.tar.gz) tar xzf "$1" ;;
    *.bz2) bunzip2 "$1" ;;
    *.rar) rar x "$1" ;;
    *.gz) gunzip "$1" ;;
    *.tar) tar xf "$1" ;;
    *.tbz2) tar xjf "$1" ;;
    *.tgz) tar xzf "$1" ;;
    *.zip) unzip "$1" ;;
    *.Z) uncompress "$1" ;;
    *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Because MacOS pbcopy ads a fucking new line at the end
function pbcopy() {
  gsed -z 's/\n$//g' | /usr/bin/pbcopy
}

# # NodeJS
# # -- NVM is tremendously slow to load up
# # -- What follows is the default sourcing:
# #export NVM_DIR="$HOME/.config/nvm"
# #  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# #  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# # -- This is an eager loading script
# # -- See: https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/
# # Default node should be at /usr/local/bin/node - which is loaded in path already
lazy_load_nvm() {
  if [[ $(type node) == *' function '* ]]; then
    unset -f node
    unset -f npm
    unset -f yarn
  fi
  unset -f nvm
  clr_green "Loading NVM..."
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  clr_blue "Loaded."

  [ -f "./.nvmrc" ] && nvm use --silent
  register_nvm_autoload
}

node() {
  lazy_load_nvm
  node "$@"
}
npm() {
  lazy_load_nvm
  npm "$@"
}

yarn() {
  lazy_load_nvm
  yarn "$@"
}

nvm() {
  lazy_load_nvm
  nvm "$@"
}

register_nvm_autoload() {
  # place this after nvm initialization!
  autoload -U add-zsh-hook
  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }
  add-zsh-hook chpwd load-nvmrc
  load-nvmrc
}
