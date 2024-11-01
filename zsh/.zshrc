# echo -e "\x1b[38;2;255;106;193m\"Invincible is just a Word\".\n                   -Takehiko Inoue\x1b[0m\n"

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Default editor
export EDITOR=nvim
export VISUAL=nvim


# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in ohmyposh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/custom.toml)"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
# zinit light jeffreytse/zsh-vi-mode

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
#alias ls='ls --color'
alias nv='nvim'
alias c='clear'
alias rrr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias lampp='sudo /opt/lampp/lampp start'
alias slampp='sudo /opt/lampp/lampp stop'
alias rlampp='sudo /opt/lampp/lampp restart'

# ls replaced with eza 
alias ls='eza --icons'
alias lsa='eza -a --icons'
alias ld='eza -lD --icons'    # List only Directories
alias lda='eza -al --group-directories-first'
alias lf='eza -lf --color=always | grep -v /'   # List only files
alias lh='eza -dl .* --group-directories-first'
alias lsl='eza -l --icons=always'
alias lsla='eza -la --icons=always'
alias lt='eza -al --sort=modified'    # Lists everything sorted by time updated

# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# set fanspeed to maximum
alias fanmax='sudo nbfc start | sudo nbfc set -f 0 -s 100 && sudo nbfc set -f 1 -s 100'
alias fanauto='sudo nbfc stop'

# Shell integrations
eval "$(zoxide init zsh)"
eval "$(zoxide init --cmd cd zsh)"

PATH=~/.console-ninja/.bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

source <(fzf --zsh)

# yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#Display Pokemon
pokemon-colorscripts --no-title -r 1,3,6
