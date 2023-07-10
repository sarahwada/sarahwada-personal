# source bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# set up homebrew awutocompletion
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# [okay] set up dbt autocomplete
echo 'source ~/.dbt-completion.bash' >> ~/.bash_profile
