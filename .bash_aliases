
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# list all files (including hidden) in long format with human readable sizes and indicators
# indicators:
# '/' - pathname
# '*' - executable
# '|' - FIFO
# '@' - symbolic link
alias ll='ls -alFh'

# list all  files but without . and ..
alias la='ls -A'

# list files recursively in long format
alias lr='ls -lR'

# list only files
alias lf='ls -l --color=always  | grep ^[-l] --color=never'
alias lfa='ls -lA --color=always | grep ^[-l] --color=never'

# list only directories
alias ld='ls -l --color=always | grep ^d --color=never'
alias lda='ls -lA --color=always | grep ^d --color=never'
# maybe it would be better to change this to scripts 
# and check if a file is a symbolic link to a directory or file


# navigation aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias q='exit'

# prompt when action is perform on more than three files or -r option is given
alias rm='rm -Iv'

# because I always forget to type -r option, maybe I'll remember this alias
alias rmdir='rm -r'

# prompt before overwrite
alias mv='mv -iv'
alias cp='cp -iv'

# prompt whether to remove destination
alias ln='ln -iv'

# no error if existing, make parent directories as needed
alias mkdir='mkdir -pv'

# display size in human readable format and use decimal prefixes (power of 1000) 
# instead of binary (power of 1024)
alias free='free -h --si'
alias df='df --si'

# list all physical disks
alias disk='df | sed -n "1p;/^\/dev\/sd/p;"'

# Shortcuts
alias dl='cd ~/Downloads && ls'
alias doc='cd ~/Documents && ls'

# Telling bash to check if the next word after sudo is an alias.
# It is necessary beacause bash check only first word of a command for an alias.
# By inserting space (or tab) at the end of the alias next command word 
# following alias will be also check for alias expansion.
# http://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Aliases
alias sudo='sudo '

# shutdown
alias bye='sudo shutdown -h now'

alias python='python3'
alias lampp='/opt/lampp/lampp'
