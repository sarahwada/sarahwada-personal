# Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

# ls output color
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


##
## Aliases - Airbnb
##
alias sc='npm run -s sanity-check --'

# other

## Aliases - Airbnb k tool
alias startzk="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/zookeeper-server-start.sh /Users/sarah_wada/source/kafka_2.11-0.9.0.1/config/zookeeper.properties"
alias startk1="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-server-start.sh /Users/sarah_wada/source/kafka_2.11-0.9.0.1/config/server1.properties"
alias startk2="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-server-start.sh /Users/sarah_wada/source/kafka_2.11-0.9.0.1/config/server2.properties"
alias startk3="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-server-start.sh /Users/sarah_wada/source/kafka_2.11-0.9.0.1/config/server3.properties"
alias startk1-10="/Users/sarah_wada/source/kafka_2.11-0.10.2.1/bin/kafka-server-start.sh /Users/sarah_wada/source/kafka_2.11-0.10.2.1/config/server1.properties"
#alias killk1="$(ps aux | grep kafka | grep server1.properties | awk '{print $2}' | xargs kill -9)"
#alias killk2="$(ps aux | grep kafka | grep server2.properties | awk '{print $2}' | xargs kill -9)"
#alias killk3="$(ps aux | grep kafka | grep server3.properties | awk '{print $2}' | xargs kill -9)"

alias kcc-se-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-console-consumer.sh --topic scram_events_staging0 --zookeeper localhost:2181"
alias kcc-sr-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-console-consumer.sh --topic scram_results_staging --zookeeper localhost:2181"
alias kcc-ke-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-console-consumer.sh --topic kleio_staging --zookeeper localhost:2181"
alias kcc-dr="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-console-consumer.sh --topic scram_exceptions --zookeeper localhost:2181/kafka10"
alias kcc-dr-s="/Users/sarah_wada/source/kafka_2.11-0.10.0.1/bin/kafka-console-consumer.sh --topic scram_exceptions_staging --zookeeper localhost:2181/kafka10"

alias kafka9-list-topics="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-topics.sh --list --zookeeper localhost:2181"
alias kafka9-create-topic-se-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-topics.sh --create --topic scram_results_staging --partitions 1 --replication-factor 1 --zookeeper localhost:2181"
alias kafka9-create-topic-sr-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-topics.sh --create --topic scram_events_staging0 --partitions 1 --replication-factor 1 --zookeeper localhost:2181"
alias kafka9-create-topic-k-s="/Users/sarah_wada/source/kafka_2.11-0.9.0.1/bin/kafka-topics.sh --create --topic kleio_staging --partitions 1 --replication-factor 1 --zookeeper localhost:2181"
alias kafka10-list-topics="/Users/sarah_wada/source/kafka_2.11-0.10.2.1/bin/kafka-topics.sh --list --zookeeper localhost:2181/kafka10"
alias kafka10-create-topic-de-s="/Users/sarah_wada/source/kafka_2.11-0.10.2.1/bin//kafka-topics.sh --create --topic druid_scram_exceptions_staging --partitions 1 --replication-factor 1 --zookeeper localhost:2181/kafka10"

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
alias uc="emacs ~/.useful_commands"
alias sw="cd $HOME/code/sarahwada-personal/"

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
alias gada="git add ."
alias gaa-gco="git add . && git commit"
alias gaa-gco-a="git add . && git commit --amend"

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

# airbnb thrift
alias thrift-configure="./configure --with-cpp=no --with-python=no --with-perl=no --with-go=no --with-nodejs=no --with-php=no --with-php_extension=no LDFLAGS='-L/usr/local/opt/openssl/lib' CPPFLAGS='-I/usr/local/opt/openssl/include'"
alias thrift-make="make -j 4 && make install -j 4"


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
    ssh -N -L $i:localhost:$i $1.inst.aws.us-east-1.prod.musta.ch &
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
  ssh -N -L "9991:localhost:9991" "$1.inst.aws.us-east-1.prod.musta.ch"
}
ssh-tunnel-p() {
  ssh -N -L "$2:localhost:$2" "$1.inst.aws.us-east-1.prod.musta.ch"
}
