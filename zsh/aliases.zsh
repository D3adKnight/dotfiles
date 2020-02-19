# ls
alias ls='ls -laF'
alias ll='ls -la'

# mkdir
alias md='mkdir'

# cd
alias b='cd ..'                             # Go back
alias ..='cd ../'
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias Desk='cd ~/Desktop'
alias Dev='cd ~/dev'

# be careful!
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'

#history
alias h='history'

# check ports
alias fpid3='lsof -i:3000'
alias fpid5='lsof -i:5858'
alias fpid80='lsof -i:8080'

# kill!
alias kll='kill -9'

# refresh
alias refresh='source ~/.zshrc'

# ====================
# Git Aliases
# ====================
alias gs='git status'
alias gap='git add -p'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gacm='git add . && git commit -m '
alias gd='git diff'
alias go='git checkout '
alias gob='git checkout -b '
alias gk='gitk --all&'
alias gx='gitx --all'
alias glog='git log --pretty=oneline --abbrev-commit'
alias up='git pull upstream master'

# configs
alias zshrc='vim ~/dotfiles/.zshrc'
alias vimrc='vim ~/dotfiles/.vimrc'

# http://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/
# Larger bash history (allow 32Â³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Make some commands not show up in history
export HISTIGNORE="h history"

# some MacOS shit
alias fix-spotlight='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;'

# Stop syncing a node_modules directory (via symlink)
noicloud() {
        mv node_modules node_modules.nosync
        ln -s node_modules.nosync/ node_modules
}
alias nocloud=noicloud
