export GOPATH=$HOME/go
export CUSTOM_BIN=$HOME/bin
export PATH=$CUSTOM_BIN:$GOPATH/bin:$PATH

# make history size very large
export HISTSIZE=99999
export HISTFILESIZE=999999
export SAVEHIST=$HISTSIZE

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # add fzf key-bindings e.g. ctrl-r for history search

alias {dotfiles,dot}='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' # alias for dotfiles bare repo
