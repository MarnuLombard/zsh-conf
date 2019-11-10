##############################################
### CONFIG VALUES AND BOOTSTRAP FOR DOCKER
###############################################

# Moved dockerin to shell script

# Shortcut to custom `dockerin` function
if which dockerin > /dev/null; then
    alias di='dockerin'
fi
