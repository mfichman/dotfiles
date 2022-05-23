
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
export EDITOR="gvim -f"

# Path for flutter
#export PATH="$PATH:~/code/flutter/bin"

# MacVim
export PATH="$PATH:/Applications/MacVim.app/Contents/bin"

# Homebrew
#eval "$(/opt/homebrew/bin/brew shellenv)"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Python/pyenv/virtualenv
#export VIRTUAL_ENV_DISABLE_PROMPT=1
#source ~/Code/venv3/bin/activate
eval "$(pyenv init -)"
export PATH="$(pyenv root)/shims:/usr/local/sbin:$PATH"

# Node
eval "$(nodenv init -)"

# Go
export GOPATH="$HOME/Code/go"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

# Other
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.bin"

# Aliases
alias less='less -R'


# Git
export GIT_STACK_USER=mfichman
export GIT_STACK_UPSTREAM=upstream/master

alias gss="git stack sync $GIT_STACK_UPSTREAM"
alias gsr="git stack rebase $GIT_STACK_UPSTREAM"
alias gsc="git stack clean $GIT_STACK_UPSTREAM"
alias gsp="git stack push $GIT_STACK_UPSTREAM"


