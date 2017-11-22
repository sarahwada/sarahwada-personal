## Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

##
## ls output color
##
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

##
## Aliases - Airbnb
##
alias sc="npm run -s sanity-check --"

##
## Aliases - Kafka
##
alias startzk="bin/zookeeper-server-start.sh config/zookeeper.properties"
alias startk1="bin/kafka-server-start.sh config/server1.properties"
alias startk2="bin/kafka-server-start.sh config/server2.properties"
alias startk3="bin/kafka-server-start.sh config/server3.properties"

##
## Aliases - moving around
##

alias ..="cd .."
alias brc="emacs ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias sw="cd /Users/sarah_wada/code/sarahwada-personal/"

alias a="cd /Users/sarah_wada/airlab/"
alias sj="cd /Users/sarah_wada/repos/scram-java/"
alias sr="cd /Users/sarah_wada/repos/scram-ruby/"
alias ch="cd /Users/sarah_wada/repos/chef/"

##
## Aliases - general
##
alias ee="open -a emacs"
alias grep="grep --color=auto"
alias ls="ls -G"
alias ll="ls -lah"

##
## Aliases - heroku
##
alias hl="heroku local"
alias svenv="source venv/bin/activate"

##
## Aliases - git
##
alias gbr="git branch"
alias gch="git checkout"
alias gpu="git pull"

alias gdi="git diff"
alias glo="git log"
alias glo-p="get log --pretty=oneline"
alias grf="git reflog"
alias gsh="git show"
alias gsh-n="git show --name-only"

alias gst="git status"
alias gst-s="git status -s"
alias gad="git add"

alias gco="git commit"
alias gco-m="git commit -m"
alias gco-a="git commit --amend"

alias gfe="git fetch"
alias gferb="git fetch && git rebase"
alias gfe-ha="git fetch && git reset --hard HEAD"
alias gcp="git cherry-pick"
# -n (--no-commit): inspect the cherry-pick before committing it
alias gcp-n="git cherry-pick -n"
alias grb="git rebase"
alias grb-c="git rebase --continue"
alias grb-s="git rebase --skip"
alias grb-i="git rebase -i"