## Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

# set up for fab
PATH="$PATH:/usr/local/share/python"

##
## ls output color
##
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


##
## Aliases - Airbnb
##
alias sc='npm run -s sanity-check --'

# kafka hosts
alias host-ku='optica role=kafka-upshot | tail -n 1'
alias ssh-ku='ssh $(host-ku)'
alias ssh-koi='ssh $(optica role=kafka-observability-internal | tail -n 1)'

# scram b pipeline
alias ssh-jm1-b='ssh $(optica role=scram-flink-jobmanager-b | sed -n 1p)'
alias ssh-jm2-b='ssh $(optica role=scram-flink-jobmanager-b | sed -n 2p)'
alias ssh-sr1-b='ssh $(optica role=scram-runner-b | sed -n 1p)'
alias ssh-sr2-b='ssh $(optica role=scram-runner-b | sed -n 2p)'
alias ssh-sr3-b='ssh $(optica role=scram-runner-b | sed -n 3p)'
alias ssh-jm-b='ssh $(optica role=scram-flink-jobmanager-b | tail -n 1)'
alias ssh-tm-b='ssh $(optica role=scram-flink-taskmanager-b | tail -n 1)'
alias ssh-sr-b='ssh $(optica role=scram-runner-b | tail -n 1)'

# scram a pipeline
alias ssh-jm-a='ssh $(optica role=scram-flink-jobmanager-a | tail -n 1)'
alias ssh-tm-a='ssh $(optica role=scram-flink-taskmanager-a | tail -n 1)'
alias ssh-sr-a='ssh $(optica role=scram-runner-a | tail -n 1)'

# scram staging
alias ssh-jm-s='ssh $(optica role=scram-flink-jobmanager-staging | tail -n 1)'
alias ssh-tm-s='ssh $(optica role=scram-flink-taskmanager-staging | tail -n 1)'
alias ssh-sr-s='ssh $(optica role=scram-runner-staging | tail -n 1)'

# upshot-druid staging
alias ssh-udb-s='ssh $(optica role=upshot-druid-broker-v2-staging | tail -n 1)'
alias ssh-udm-s='ssh $(optica role=upshot-druid-master-v2-staging | tail -n 1)' # coordinator + overlord
alias ssh-udw-s='ssh $(optica role=upshot-druid-worker-v2-staging | tail -n 1)'


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
alias aws-ls="awc-mfa aws s3 ls s3://airbnb-upshot/scram/logs/scram_events/2018-04-10_10" # random ls command to refresh creds



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
alias sw="cd /Users/sarah_wada/code/sarahwada-personal/"

alias a="cd /Users/sarah_wada/airlab/"
alias sd="cd /Users/sarah_wada/dev/airbnb-dev/scram-dev/"
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
alias gad-a="git add ."
alias gaa-agco="git add . && git commit"
alias gaa-agco-a="git add . && git commit --amend"

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