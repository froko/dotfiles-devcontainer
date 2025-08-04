export VISUAL=nvim
export EDITOR=$VISUAL
export LANG="en_US.UTF-8"

HISTFILE=~/.bash_history
HISTSIZE=100000
SAVEHIST=100000

alias reload='RELOAD=1 source ~/.bashrc'

alias c="clear"
alias h="cd ~"
alias w="cd $(ls -d /workspaces/*|head -n 1)"
alias v="nvim"
alias t="tmux"
alias lg="lazygit"

alias l="ls -lh --color"
alias ll="ls -lha --color"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias lpath='echo $PATH | tr ":" "\n"'

source <(fzf --bash)
source ~/.config/bash/pure.bash
