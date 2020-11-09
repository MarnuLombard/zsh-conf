# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash
##############################################
### CUSTOM FUNCTIONS
###############################################

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