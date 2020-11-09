# Because sellcheck doesn't support zsh, but is still useful:
# shellcheck shell=bash
#################################################
### CONFIG VALUES FOR THE CURRENTLY ACTIVE THEME
#################################################

# BULLETTRAIN_PROMPT_ORDER defines order of prompt segments. Use zsh array syntax to specify your own order
export BULLETTRAIN_PROMPT_ORDER=(
  time
  context
  cmd_exec_time
  status
  dir
  git
)



# VARIABLE                                  DEFAULT           MEANING

# Prompt
# BULLETTRAIN_PROMPT_CHAR                    \$               Character to be show before any command
# BULLETTRAIN_PROMPT_ROOT                    true             Highlight if running as root
# BULLETTRAIN_PROMPT_SEPARATE_LINE           true             Make the prompt span across two lines
# BULLETTRAIN_PROMPT_ADD_NEWLINE             true             Adds a newline character before each prompt line


# Status
# BULLETTRAIN_STATUS_SHOW                     true            Show/hide that segment
export BULLETTRAIN_STATUS_EXIT_SHOW=false #           Show/hide exit code of last command
# BULLETTRAIN_STATUS_BG                       green           Background color
# BULLETTRAIN_STATUS_ERROR_BG                 red             Background color of segment when last command exited with an error
# BULLETTRAIN_STATUS_FG                       black           Foreground color

# Time
# BULLETTRAIN_TIME_SHOW                       true            Show/hide that segment
# BULLETTRAIN_TIME_12HR                       false           Format time using 12-hour clock (am/pm)
# BULLETTRAIN_TIME_BG                         ''              Background color
# BULLETTRAIN_TIME_FG                         ''              Foreground color

# Custom
# BULLETTRAIN_CUSTOM_MSG                      false           Free segment you can put a custom message
# BULLETTRAIN_CUSTOM_BG                       black           Background color
# BULLETTRAIN_CUSTOM_FG                       black           Foreground color

# Context
# BULLETTRAIN_CONTEXT_SHOW                    false           Show/hide that segment
# BULLETTRAIN_CONTEXT_BG                      black           Background color
# BULLETTRAIN_CONTEXT_FG                      default         Foreground color
# BULLETTRAIN_CONTEXT_DEFAULT_USER            none            Default user. If you are running with other user
#                                                             other than default, the segment will be showed.
# BULLETTRAIN_CONTEXT_HOSTNAME                %m              Hostname. Set %M to display the full qualified domain name.
export BULLETTRAIN_IS_SSH_CLIENT=true            #If true, the segment will be showed.
export BULLETTRAIN_CONTEXT_SHOW=false

# Python virtualenv (+Pyenv)
# BULLETTRAIN_VIRTUALENV_SHOW                 true            Show/hide that segment
# BULLETTRAIN_VIRTUALENV_BG                   yellow          Background color
# BULLETTRAIN_VIRTUALENV_FG                   white           Foreground color
# BULLETTRAIN_VIRTUALENV_PREFIX               🐍             Prefix of the segment
export BULLETTRAIN_VIRTUALENV_SHOW=false

# node.js nvm
export BULLETTRAIN_NVM_SHOW=false #            Show/hide that segment
# BULLETTRAIN_NVM_BG                          green            Background color
# BULLETTRAIN_NVM_FG                          white            Foreground color
# BULLETTRAIN_NVM_PREFIX                      "⬡ "            Prefix of the segment

# Ruby RVM/Rbenv
# BULLETTRAIN_RUBY_SHOW                       true             Show/hide that segment
# BULLETTRAIN_RUBY_BG                         magenta          Background color
# BULLETTRAIN_RUBY_FG                         white            Foreground color
# BULLETTRAIN_RUBY_PREFIX                     "♦"              Prefix of the segment
export BULLETTRAIN_RUBY_SHOW=false

# Go
# BULLETTRAIN_GO_SHOW                         false            Show/hide that segment
# BULLETTRAIN_GO_BG                           green            Background color
# BULLETTRAIN_GO_FG                           white            Foreground color
# BULLETTRAIN_GO_PREFIX                       go               Prefix of the segment

# Perl
# BULLETTRAIN_PERL_SHOW                       false            Show/hide that segment
# BULLETTRAIN_PERL_BG                         yellow           Background color
# BULLETTRAIN_PERL_FG                         black            Foreground color
# BULLETTRAIN_PERL_PREFIX                     🐪               Prefix of the segment

# Dir
# BULLETTRAIN_DIR_SHOW                        true             Show/hide that segment
# BULLETTRAIN_DIR_BG                          blue             Background color
# BULLETTRAIN_DIR_FG                          white            Foreground color
# BULLETTRAIN_DIR_CONTEXT_SHOW                false            Show user and machine in an SCP formatted style
# BULLETTRAIN_DIR_EXTENDED                    1                Extended path (0=short path,
#                                                              1=medium path, 2=complete path, everything else=medium path)
export BULLETTRAIN_DIR_EXTENDED=1

# Git
# BULLETTRAIN_GIT_SHOW                        true             Show/hide that segment
# BULLETTRAIN_GIT_COLORIZE_DIRTY              false            Set BULLETTRAIN_GIT_BG to
#                                                              BULLETTRAIN_GIT_COLORIZE_DIRTY_COLOR in dirty state
# BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR     yellow           BULLETTRAIN_GIT_BG in dirty state
# BULLETTRAIN_GIT_COLORIZE_DIRTY_FG_COLOR     black            BULLETTRAIN_GIT_FG in dirty state
# BULLETTRAIN_GIT_BG                          white            Background color
# BULLETTRAIN_GIT_FG                          black            Foreground color
# BULLETTRAIN_GIT_PROMPT_CMD                  git_prompt_info  Function to display details about your git segment.
# BULLETTRAIN_GIT_EXTENDED                    true
# BULLETTRAIN_GIT_PREFIX                      ""             Prefix
# BULLETTRAIN_GIT_SUFFIX                      ""               Suffix
# BULLETTRAIN_GIT_DIRTY                       "✘"              Icon for dirty state
# BULLETTRAIN_GIT_CLEAN                       "✔"              Icon for clean state
# BULLETTRAIN_GIT_ADDED                       "%F{green}✚%F{black}"      Icon for added files on stage
# BULLETTRAIN_GIT_MODIFIED                    "%F{blue}✹%F{black}"       Icon for modified files
# BULLETTRAIN_GIT_DELETED                     "%F{red}✖%F{black}"        Icon for delete files on stage
# BULLETTRAIN_GIT_UNTRACKED                   "%F{yellow}✭%F{black}"     Icon for untracked files
# BULLETTRAIN_GIT_RENAMED                     "➜"              Icon for renamed
# BULLETTRAIN_GIT_UNMERGED                    "═"               Icon for unmerged state
# BULLETTRAIN_GIT_AHEAD                       " ⬆"             Icon for ahead state from remote
# BULLETTRAIN_GIT_BEHIND                      " ⬇"             Icon for behind state from remote
# BULLETTRAIN_GIT_DIVERGED                    " ⬍"              Icon for diverged state from remote

# Mercurial/HG
# BULLETTRAIN_HG_SHOW                         true              Show/hide that segment

# Command execution time
export BULLETTRAIN_EXEC_TIME_SHOW=true #             Show/hide that segment
# BULLETTRAIN_EXEC_TIME_ELAPSED               5                 Elapsed time of command execution
# BULLETTRAIN_EXEC_TIME_BG                    yellow            Background color
# BULLETTRAIN_EXEC_TIME_FG                    black             Foreground color
