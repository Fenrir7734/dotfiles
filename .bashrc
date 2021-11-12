# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# load shell dotfiles
for file in ~/.{bash_aliases,bash_scripts,bash_prompt}; do
    [ -f "$file" ] && [ -r "$file" ] && source "$file";
done;
unset file

# setting unlimited history
HISTSIZE=
HISTFILESIZE=

# display date and time alongside commands in format yyyy-MM-dd hh:mm:ss
HISTTIMEFORMAT="[%F %T] "

# change the file location to avoid truncation
HISTFILE=~/.bash_unlimited_history

# append to the history file, don't overwrite it
shopt -s histappend

# Force prompt to write history after every command
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
