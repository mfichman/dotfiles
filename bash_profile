# Locale options
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PS1="$(hostname | tr '[:lower:]' '[:upper:]')❯ "
export CLICOLOR=1

# Default editor for git
export PATH="$PATH:/Applications/MacVim.app/Contents/bin" # MacVim
export EDITOR="nvim"
alias vim="nvim"

# Path for flutter
#export PATH="$PATH:~/code/flutter/bin"

# Rust
#source "$HOME/.cargo/env" 

# Homebrew
#source $HOME/.sh/homebrew

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

export CRAFTING_SANDBOX_SERVER_URL=https://instabase.sandboxes.site
