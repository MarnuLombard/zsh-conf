##############################################
### CUSTOM FUNCTIONS
###############################################

# Colours in man pages
# @source http://www.cyberciti.biz/faq/linux-unix-colored-man-pages-with-less-command/
# man() {
#     env \
#     LESS_TERMCAP_mb="$(printf '\e[1;31m')" \
#     LESS_TERMCAP_md="$(printf '\e[1;31m')" \
#     LESS_TERMCAP_me="$(printf '\e[0m')" \
#     LESS_TERMCAP_se="$(printf '\e[0m')" \
#     LESS_TERMCAP_so="$(printf '\e[1;44;33m')" \
#     LESS_TERMCAP_ue="$(printf '\e[0m')" \
#     LESS_TERMCAP_us="$(printf '\e[1;32m')" \
#     man "$@"
# }


# Alias to Laravel's cli if in a Laravel dir,
# Else call the global install of `artisan`'s underlying PsySh

function tinker() {
  if [[ -f $(pwd)/artisan ]]; then
    php artisan tinker;
  else
    psysh;
  fi
}

export BRANCH;
# Store in an env var a branch name to be refered to later
function save_branch() {
  BRANCH=$(git rev-parse --abbrev-ref HEAD);

  return 0;
}