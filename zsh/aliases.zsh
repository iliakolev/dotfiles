alias r='. ~/.zshrc'
alias d='cd ~/.dotfiles'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

# Vim
alias v='vim'

# Unix
alias l='ls'
alias ll='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Faster npm for Europeans
command -v npm > /dev/null && alias npme='npm --registry http://registry.npmjs.eu/'
