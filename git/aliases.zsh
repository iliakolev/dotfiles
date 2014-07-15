# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gd='git diff'
alias gfb='git checkout -b'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl='git pull --prune'
alias gco='git checkout'
alias gm='git merge'
alias gmff='git merge --no-ff'
alias gp='git push origin HEAD'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gt='git tag'
