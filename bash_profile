
# Set up terminal
function __ps1_newline_login {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}

PROMPT_COMMAND="__ps1_newline_login; $PROMPT_COMMAND"

export PS1="❯ "
export CLICOLOR=1

# Make rake parallel:setup use database x_test1 database instead of x_test
export PARALLEL_TEST_FIRST_IS_1=true

# Default editor for git
export EDITOR="/usr/local/bin/gvim -f"

# Python/pyenv/virtualenv
export PATH="$(pyenv root)/shims:/usr/local/sbin:$PATH"
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Ruby
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias less='less -R'

