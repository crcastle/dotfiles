eval "$(hub alias -s)"
alias g='git'
alias gl='git pull --prune'
alias glr='git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %Cblue%an%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git difftool'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gunpushed="git log origin/$(current_branch)..HEAD"
alias gunpulled="git log HEAD..origin/$(current_branch)"
alias unpulled='gunpulled'

# git svn junk
alias gsf="git svn fetch"
alias gsr="git svn rebase"
alias gsd="git svn dcommit"
