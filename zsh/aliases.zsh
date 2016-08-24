# *************************************
#
#   Aliases
#
# *************************************


# -------------------------------------
#   Linux
# -------------------------------------

# ----- Advanced Packaging Tool ----- #

alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias apts='sudo apt-cache search'
alias aptu='sudo apt-get update && \
            sudo apt-get upgrade'

alias update='aptu'

# ----- Listing ----- #

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then
    colorflag='--color'
else
    colorflag='-G'
fi

# List all files colorized in long format
alias l='ls -1F ${colorflag}'

# List all files colorized in long format, including dot files
alias la='ls -laF ${colorflag}'

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# ----- Navigation ----- #

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ----- Network ----- #

alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"


# ----- Shortcuts ----- #

alias c='clear'
alias d='cd ~/.dotfiles'
alias db='cd ~/Dropbox'
alias h='history'
alias k9='kill -9'
alias p='cd ~/projects'
alias r='. ~/.zshrc'
alias rm='rm -i'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
