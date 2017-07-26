## source bashrc ##
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# begin devtools provisioning to setup local development

# Remove any existing /box/www/devtools_readonly/bin from the path
PATH=$(echo $PATH | sed 's/\/box\/www\/devtools_readonly\/bin[:]*//g')

# Remove any existing /usr/local/bin from the path
PATH=$(echo $PATH | sed 's/\/usr\/local\/bin[:]*//g')

# Add /usr/local/bin and /box/www/devtools_readonly/bin to the top of your PATH
export PATH=/usr/local/bin:/box/www/devtools_readonly/bin:$PATH
# end devtools provisioning
# begin devtools
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
# end devtools
# begin devtools
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi
# end devtools


# add devtools/bin to path
PATH=$PATH:/box/www/devtools/bin
# add bin to path
PATH=$PATH:~/bin

# add more memory to sbt-launcher (prevent java.lang.OutOfMemoryError errors)
export SBT_OPTS="-XX:PermSize=2G -XX:MaxPermSize=2G -Xmx2G -XX:ReservedCodeCacheSize=64m -XX:+CMSClassUnloadingEnabled"