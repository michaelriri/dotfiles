eval "$(pyenv init -)"
source ~/.aliases
source ~/.zshenv

zmodload zsh/complist

autoload -Uz compinit && compinit

_comp_options+=(globdots) # With hidden files

compdef vman="man"

setopt MENU_COMPLETE    # Automatically highlight first element of completion menu
setopt AUTO_LIST        # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD # Complete from both ends of a word.

zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select 
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit

zstyle ':prompt:pure:path' color cyan
zstyle ':prompt:pure:prompt:success' color magenta
zstyle ':prompt:pure:prompt:error' color red
zstyle :prompt:pure:git:stash show yes

prompt pure
