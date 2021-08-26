
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
alias lf='ls -l | grep ^-'

# list only directories
alias ld='ls -l | grep ^d'

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

alias python='python3'
