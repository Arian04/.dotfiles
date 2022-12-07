# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt settings
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:ssh:*' hosts off	# Stops using known_hosts for ssh autocomplete
zstyle ':completion:*:scp:*' hosts off	# Stops using known_hosts for scp autocomplete
setopt extendedglob         # Better pattern-matching, allows * to work
setopt HIST_IGNORE_SPACE    # Hide commands with a leading space from history
setopt MENU_COMPLETE
setopt nonomatch
setopt INTERACTIVE_COMMENTS # Allow comments in interactive shells

# version of delete-word that stops at slashes
backward-delete-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    local WORDCHARS=${WORDCHARS/\-}
    zle backward-delete-word
}
zle -N backward-delete-dir

# Edit keys
bindkey "^[[3~" delete-char			# Bind del key to delete character
bindkey "^H" backward-delete-dir	# Bind ctrl-backspace to delete word (excluding slashes)
bindkey "\e[1;5D" backward-word		# Bind ctrl-left
bindkey "\e[1;5C" forward-word		# Bind ctrl-right

# Environment variables
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/firefox-developer-edition
export PYTHONSTARTUP='/home/arian/.python_startup.py' # Python startup script
export TERM=xterm-256color # Fixes tmux colors with zsh
export PATH=~/bin:$PATH
export PATH=~/.local/bin:$PATH
export GPG_TTY=$TTY # Fixes gpg not being able to prompt for passphrase

# Colored man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Aliases
alias sudo="sudo " # Sudo alias to make sudo commands work with aliases
alias cp="cp -i"
alias mv="mv -i"
alias df='df -hl'
alias grep='grep --color'
alias free='free -m'
alias np='nano -w PKGBUILD'
alias more=less
alias ls="ls -lAh --color=always"
alias ip="ip --color=always"
alias tree="tree -C"
alias du="du -h"
alias xcopy="xclip -selection clipboard"
alias xpaste="xclip -selection clipboard -o"
alias cl="clear"
alias history="history 1"
alias bgd="bg && disown"
alias bgde="bg && disown && exit"
alias py="python"
alias vim="nvim"
alias lsblk="lsblk -o name,size,mountpoint,fstype,label,uuid"
alias molecule-login="docker exec -it instance /bin/bash"

# Wake-on-lan mac addresses
alias wol-laptop="wol 4c:e1:73:42:59:6d"
alias wol-server="wol 28:d2:44:fe:2f:23"
alias wol-nas="wol d8:07:b6:54:d2:dd"

# Git
alias gits="git status"
alias gitd="git diff"
alias gitdc="git diff --cached"

# Sets title as last command
preexec() {
    #echo -en "\e]2;$1\a" # xfce4-terminal
    echo -ne "\033]30;$1\007" # konsole
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
