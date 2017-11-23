# *************************************
#
#   Aliases
#   -> Git
#
# *************************************


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
alias gac='git add . && git commit'
alias gacv='git add . && git commit --verbose'
alias gap='git add -p'
alias gb='git branch'
alias gba='git branch -a'
alias gbm='git branch -m'
alias gc='git commit'
alias gca='git commit -a'
alias gce='git commit --amend'
alias gcv='git commit --verbose'
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gds='git diff --stat'
alias gdt='git difftool'
alias gfb='git checkout -b'
alias gg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative -15'
alias gga='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias ggo='git log --oneline --stat'
alias gl='git pull'
alias glr='git pull --rebase'
alias gm='git merge'
alias gmff='git merge --no-ff'
alias gom='git checkout master'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gst='git stash save'
alias gsth='git stash show'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gt='git tag'
