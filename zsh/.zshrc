# Created by newuser for 5.9
autoload -U colors && colors
bindkey -e

PS1="%{$fg[cyan]%}%~%{$fg[red]%} %{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
source <(fzf --zsh)

finder() {
    xdg-open .
}
zle -N finder
bindkey '^f' finder

# Basic auto/tab complete:
autoload -U compinit && compinit
autoload -U colors && colors
zmodload zsh/complist

_comp_options+=(globdots)

alias venv="source .venv/bin/activate"
alias vim=nvim
alias vi="nvim"
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# edit command line
autoload edit-command-line
zle -N edit-command-line
