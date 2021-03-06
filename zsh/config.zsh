export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($DOTZSH/functions $fpath)

autoload -U $DOTZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

zle -N newtab

## Path to your oh-my-zsh configuration.
#export ZSH=$HOME/.oh-my-zsh
#export ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh/custom

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="prose"
# 
# # Which plugins would you like to load?
# # (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(jump)
# 
# source $ZSH/oh-my-zsh.sh

export SHELL=/usr/local/bin/zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PROMPT_TITLE='echo -ne "\033]0;%n@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"

source ~/.zprezto/init.zsh
