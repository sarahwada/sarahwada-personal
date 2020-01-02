# Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

# ls output color
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# airbnb stuff
export ONETOUCHGEN_ACCEPT_EULA=yep
export PATH=$HOME/airlab/runtime_gems/tools/bin:$PATH
source <(yak completion bash)
# set up for fab
PATH="$PATH:/usr/local/share/python"

##
## Aliases - Airbnb
##
alias sc='npm run -s sanity-check --'
alias yk-s='rvm use system && yk'

# other
#alias ssh-mn="ssh $(optica role=^monorail-next$ | head -n 1)"
#alias ssh-m="ssh $(optica role=^monorail-web$ | tail -n 1)" # takes too longs to run, move to bash_profile

# other

## Aliases - Airbnb k tool
##
alias kbg="cdk && ENV=test-6 k build generate"
alias dkt1="cdk && ENV=test-1 k deploy"
alias dkt2="cdk && ENV=test-2 k deploy"
alias dkt3="cdk && ENV=test-3 k deploy"
alias dkt4="cdk && ENV=test-4 k deploy"
alias dkt5="cdk && ENV=test-5 k deploy"
alias dkt6="cdk && ENV=test-6 k deploy"

alias wkr="cdk && watch -n1 'ENV=production k status'"
alias wkc="cdk && watch -n1 'ENV=canary k status'"
alias wkn="cdk && watch -n1 'ENV=next k status'"
alias wkdt="cdk && watch -n1 'ENV=dot-tools k status'"
alias wkdth="cdk && watch -n1 'ENV=dot-tools-hrl k status'"
alias wks="cdk && watch -n1 'ENV=staging k status'"
alias wksb="cdk && watch -n1 'ENV=staging-baseline k status'"
alias wkt="cdk && watch -n1 'ENV=takoyaki k status'"
alias wkt1="cdk && watch -n1 'ENV=test-1 k status'"
alias wkt2="cdk && watch -n1 'ENV=test-2 k status'"
alias wkt3="cdk && watch -n1 'ENV=test-3 k status'"
alias wkt4="cdk && watch -n1 'ENV=test-4 k status'"
alias wkt5="cdk && watch -n1 'ENV=test-5 k status'"
alias wkt6="cdk && watch -n1 'ENV=test-6 k status'"
alias wksd="cdk && watch -n1 'ENV=shared-development k status'"
alias wkdtsd="cdk && watch -n1 'ENV=dot-tools-shared-development k status'"

alias tkr="cdk && ENV=production k tail"
alias tkc="cdk && ENV=canary k tail"
alias tkn="cdk && ENV=next k tail"
alias tkdt="cdk && ENV=dot-tools k tail"
alias tkdth="cdk && ENV=dot-tools-hrl k tail"
alias tks="cdk && ENV=staging k tail"
alias tkt="cdk && ENV=takoyaki k tail"
alias tkt1="cdk && ENV=test-1 k tail"
alias tkt2="cdk && ENV=test-2 k tail"
alias tkt3="cdk && ENV=test-3 k tail"
alias tkt4="cdk && ENV=test-4 k tail"
alias tkt5="cdk && ENV=test-5 k tail"
alias tkt6="cdk && ENV=test-6 k tail"

alias lkr="cdk && ENV=production k logs"
alias lkc="cdk && ENV=canary k logs"
alias lkn="cdk && ENV=next k logs"
alias lkdt="cdk && ENV=dot-tools k logs"
alias lkdth="cdk && ENV=dot-tools-hrl k log"
alias lks="cdk && ENV=staging k logs"
alias lkt="cdk && ENV=takoyaki k logs"
alias lkt1="cdk && ENV=test-1 k logs"
alias lkt2="cdk && ENV=test-2 k logs"
alias lkt3="cdk && ENV=test-3 k logs"
alias lkt4="cdk && ENV=test-4 k logs"
alias lkt5="cdk && ENV=test-5 k logs"
alias lkt6="cdk && ENV=test-6 k logs"

alias ssh-kr="cdk && ENV=production k ssh"
alias ssh-kc="cdk && ENV=canary k ssh"
alias ssh-kn="cdk && ENV=next k ssh"
alias ssh-kdt="cdk && ENV=dot-tools k ssh"
alias ssh-kdth="cdk && ENV=dot-tools-hrl k ssh"
alias ssh-ks="cdk && ENV=staging k ssh"
alias ssh-kt="cdk && ENV=takoyaki k ssh"
alias ssh-kt1="cdk && ENV=test-1 k ssh"
alias ssh-kt2="cdk && ENV=test-2 k ssh"
alias ssh-kt3="cdk && ENV=test-3 k ssh"
alias ssh-kt4="cdk && ENV=test-4 k ssh"
alias ssh-kt5="cdk && ENV=test-5 k ssh"
alias ssh-kt6="cdk && ENV=test-6 k ssh"

##
## Aliases - Kafka
##
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
## Alias Amazon
##



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
alias sw="cd /Users/sarah_wada/code/sarahwada-personal/"

alias al="cd /Users/sarah_wada/airlab/"
alias a="cd /Users/sarah_wada/airlab/repos/airbnb/"
alias r="cd /Users/sarah_wada/repos/"
alias t="cd /Users/sarah_wada/repos/treehouse"   # with sparse checkouts
alias t2="cd /Users/sarah_wada/repos/treehouse2" # without sparse checkouts
alias at="cd /Users/sarah_wada/airlab/repos/treehouse" # airlab treehouse with sparse checkouts

alias cdk="cd /Users/sarah_wada/airlab/repos/treehouse/projects/kraken/service"
alias cdm="cd /Users/sarah_wada/airlab/repos/treehouse/projects/mofi"

alias kr="cd /Users/sarah_wada/repos/treehouse/projects/kraken/service"
alias krd="cd /Users/sarah_wada/dev/airbnb-dev/kraken-dev/"
alias sd="cd /Users/sarah_wada/dev/airbnb-dev/scram-dev/"
alias sj="cd /Users/sarah_wada/repos/scram-java/"
alias sr="cd /Users/sarah_wada/repos/scram-ruby/"
alias ch="cd /Users/sarah_wada/repos/chef/"
alias ch-a="cd /Users/sarah_wada/airlab/chef"
alias al="cd /Users/sarah_wada/repos/alerts/"
alias di="cd /Users/sarah_wada/repos/diffy/"

##
## Aliases - general
##
alias ee="open -a emacs"
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

# path for bison
export PATH="/usr/local/opt/bison/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# path for k tool
export PATH="$PATH:/Users/sarah_wada/airlab/runtime_gems/tools/bin/k"

# path for flutter
export PATH="$PATH:/Users/sarah_wada/code/flutter/bin"

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
ssh-role() {
  ssh "$(optica role=$1 | head -n 1)"
}
ssh-host() {
  ssh "$1.inst.aws.us-east-1.prod.musta.ch"
}
ssh-tunnel() {
  ssh -N -L "9991:localhost:9991" "$1.inst.aws.us-east-1.prod.musta.ch"
}
ssh-tunnel-p() {
  ssh -N -L "$2:localhost:$2" "$1.inst.aws.us-east-1.prod.musta.ch"
}
ssh-kpod() { # ssh-kpod ENV POD
  cdk && ENV="$1" POD="$2" k ssh
}
ssh-kpod-ct() { # ssh-kpod-ct ENV POD CONTAINER
  cdk && ENV="$1" POD="$2" CONTAINER="$3" k ssh
}
ssh-kct() { # ssh-kct ENV CONTAINER
  cdk && ENV="$1" CONTAINER="$3" k ssh
}
