
setopt share_history

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

# Default editor for git
export PATH="$PATH:/Applications/MacVim.app/Contents/bin" # MacVim
export EDITOR="nvim"
alias vim="nvim"
export PATH="$PATH:/Applications/MacVim.app/Contents/bin" # MacVim

# Path for flutter
#export PATH="$PATH:~/code/flutter/bin"

# Rust
. "$HOME/.cargo/env"

# Python/pyenv/virtualenv
#export VIRTUAL_ENV_DISABLE_PROMPT=1
#source ~/Code/venv3/bin/activate
eval "$(pyenv init -)"
export PATH="$PATH:$(pyenv root)/shims:/usr/local/sbin"
export PYTHONPATH="$PYTHONPATH;./build/py"

# Node
eval "$(nodenv init -)"

# Go
export GOVERSION=${GOVERSION:-1.18.3}
export GO111MODULE=on
export GOPATH="$HOME/go/$GOVERSION/$(arch)"
export PATH="$GOPATH/bin:$PATH"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

# Other
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.bin:$PATH"

# Homebrew
source $HOME/.sh/homebrew

# Go
source $HOME/.sh/go

# Aliases
alias less='less -R'
alias vim='nvim'

# Git
export GIT_STACK_USER=mfichman

alias gss="git stack sync $GIT_STACK_UPSTREAM"
alias gsr="git stack rebase $GIT_STACK_UPSTREAM"
alias gsc="git stack clean $GIT_STACK_UPSTREAM"
alias gsp="git stack push $GIT_STACK_UPSTREAM"
alias gsl="git stack log"
