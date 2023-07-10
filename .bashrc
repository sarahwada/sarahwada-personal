# Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

# ls output color
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

##
## Set gcloud sdk python version
##
export CLOUDSDK_PYTHON=python3

alias python=python3

##
## Aliases - Okay
##
alias dbt-prep="cdo && cd dbt_bq && dbt seed && dbt run-operation stage_external_tables --args '{bq_shards: [0]}' && dbt run-operation copy_business_tables"
alias dbt-log-completion="dbt run-operation log_etl_completion"
alias dbt-full="dbt-prep && dbt run && dbt-log-completion"
alias dbt-run-dev="dbt run --vars '{\"okay_etl_udfs_version\": \"sarah\", \"okay_etl_udfs_bucket\": \"dev-bq-udf-js-artifacts\"}'"
alias dbt-build-dev="yarn --cwd $HOME/okay/code/okay/dbt_bq/dependencies dev-build sarah"

##
## Aliases - system
##
alias ps-p="ps -eo pid,comm,lstart,etime,time,args"

##
## Aliases - moving around
##

alias ..="cd .."
alias brc="emacs ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias zrc="emacs ~/.zshrc"
alias szrc="source ~/.zshrc"

alias uc="emacs ~/.useful_commands"

alias sw="cd $HOME/code/sarahwada-personal/"
alias cdc="cd $HOME/code/"
alias cdo="cd $HOME/okay/code/okay"

##
## Aliases - general
##
alias emacs="emacs -nw"
alias emacsw="emacs"
alias grep="grep --color=auto"
alias ls="ls -G"
alias ll="ls -lah"

alias pretty="python -m json.tool"

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
alias gch-m="git checkout master"

alias gpu="git pull"
alias gpu-m="git pull origin master"

alias gdi="git diff"
alias glo="git log"
alias glo-p="get log --pretty=oneline"
alias grf="git reflog"
alias gsh="git show"
alias gsh-n="git show --name-only"

alias gst="git status"
alias gst-s="git status -s"
alias gad="git add ."
alias gadco="git add . && git commit --amend"

alias gco="git commit"
alias gco-m="git commit -m"
alias gco-a="git commit --amend"

alias gfe="git fetch"
alias gferb="git fetch && git rebase"
alias gcp="git cherry-pick"
# -n (--no-commit): inspect the cherry-pick before committing it
alias gcp-n="git -c core.hooksPath=/dev/null cherry-pick"
alias grb="git rebase"
alias grb-c="git rebase --continue"
alias grb-s="git rebase --skip"
alias grb-i="git rebase -i"
alias grr-s="git reset --soft HEAD^ && git restore --staged ."

#
# path changes
#

##
## Functions
##

# port forwarding
function pfwd-role {
  ROLE=$(optica role=$1 | head -n 1)
  for i in ${@:2}
  do
    ssh -N -L $i:localhost:$i $ROLE &
  done
}

function pfwd-host {
  for i in ${@:2}
  do
    ssh -N -L $i:localhost:$i $1.HOST_DOMAIN_HERE &
  done
}

function pfwd {
  for i in ${@:2}
  do
    ssh -N -L $i:localhost:$i $1 &
  done
}

function kill-pfwd-all {
  ps aux | grep "ssh -N -L" | awk '{system("kill " $2)}'
}

# ssh commands
ssh-tunnel() {
  ssh -N -L "9991:localhost:9991" "$1.HOST_DOMAIN_HERE"
}
ssh-tunnel-p() {
  ssh -N -L "$2:localhost:$2" "$1.HOST_DOMAIN_HERE"
}


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
