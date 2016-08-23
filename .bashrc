## Git auto-completion for aliases
##   - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/.git-completion.bash

##
## ls output color
##
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

##
## Aliases - moving around
##

alias ..="cd .."
alias brc="emacs ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias sw="cd /Users/swada/cs/swada-personal/"

alias c="cd /box/www/current_local/"
alias i="cd /box/www/infra/"
alias s="cd /box/www/infra/scala/"
alias sarahwada="cd /Users/swada/sarahwada-personal/"

alias sbt="sbt shell"
# sbt testing env for pod
alias sbt-mcfun="sbt -Dsbt.log.noformat=true -Dbox.endpoint.cacheproxyd=pod4101-overmind01:31212 -Dbox.endpoint.cachemanager.admin=cacheman03.dev.box.net:8152 -Dbox.endpoint.memcache=appcache01.dev.box.net:11211 -Dbox.environments=devvm,dev,pod4101"
alias sbt-cmfun="sbt -Dsbt.log.noformat=true -Dbox.endpoint.cachemanager=cacheman03.dev.box.net:8151 -Dbox.endpoint.cachemanager.admin=cacheman03.dev.box.net:8152 -Dbox.environments=devvm,dev,pod4101"

alias cpd="cd /box/www/infra/cachemanager/cacheproxy/"
alias cm="cd /box/www/infra/scala/services/cache-manager/src/main/scala/com/box/"
alias cm-test="cd /box/www/infra/scala/services/cache-manager/src/test/scala/com/box/"
alias ac="cd /box/www/appconf/"
alias cli="cd /box/www/infra/scala/tools/cache-admin-cli/src/main/scala/com/box/cacheadmincli/"
alias cdcli-s="cd /box/www/infra/scala/tools/cache-admin-cli/target/universal/stage/bin/"
alias cdcli="cd /box/www/infra/scala/tools/cache-admin-cli/target/scala-2.10"
alias cdacli-s="cd /box/www/infra/scala/tools/appconf-admin-cli/target/universal/stage/bin/"
alias cdacli="cd /box/www/infra/scala/tools/appconf-admin-cli/target/scala-2.10"

##
## Aliases - moving things to swada.dev.box.net
##
alias scp-credence-cache="scp -r /box/www/infra/scala/services/credence/src/main/scala/com/box/credence/cache swada:~/infra/scala/services/credence/src/main/scala/com/box/credence/"
alias git-remote-sync="./bin/git_sync_to_remote.sh swada /home/swada/infra"

##
## Aliases - opening things
##
alias ee="open -a emacs"

##
## Aliases - doing things
##
alias grep="grep --color=auto"

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