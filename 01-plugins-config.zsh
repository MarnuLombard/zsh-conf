# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash

##############################################
### CONFIG VALUES FOR OH-MY-ZSH PLUGINS
##############################################

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=239'

# The ENHANCD_FILTER is an environment variable. It looks exactly like the PATH variable
# with many different filters such as peco concatenated using ':'.
# eg. fzf-tmux:fzf:peco:fzy:percol:gof:pick:icepick:sentaku:selecta
export ENHANCD_FILTER=fzy:fzf

# # ZSH You Should Use
# # @see https://github.com:MichaelAquilina/zsh-you-should-use
# #
# # Displaying Results
# # By default, you-should-use will display all matches with aliases found.
# # However, you can change this so that it only displays the best match found by setting the value of YSU_MODE.
# export YSU_MODE=BESTMATCH

# # Hardcore Mode
# # You can enable Hardcore mode to enforce the use of aliases.
# # Enabling this will cause zsh to refuse to execute commands you have entered if an alternative alias for it exists.
# export YSU_HARDCORE=1

# Wakatime
ZSH_WAKATIME_PROJECT_DETECTION=true
