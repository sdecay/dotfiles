# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jay/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=90'

export XDG_CONFIG_HOME=$HOME/.config
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo colored-man-pages) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export RG_PREFIX="rg --column --line-number --no-heading --color=always"
# TODO: change ag to rg
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore-dir ".np*,vendor*" -g ""'
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# why doesn't this work
# export FZF_DEFAULT_OPTS='‐-bind="j:down,k:up"'

export EDITOR=nvim

#export GOPATH="$HOME/.go"
#export GOROOT="/usr/local/go"

export WINHOME=/mnt/c/Users/jay/Desktop/

export PATH=$PATH:$GOPATH:$GOPATH/bin:$GOROOT/bin:$HOME/bin

# my aliases
alias grep="rg"
alias cat="bat"
alias cz="czkawka-gui&"
alias rn="ranger"
alias ls="exa"
alias find="fd"
alias btop="bpytop"

alias vim="$EDITOR"
alias vi="$EDITOR"
alias tn="tmux new -s"
alias cs="cd \$(find ~/* -type d | fzf)"
alias c-="cd -"
alias vsh="$EDITOR ~/.zshrc"
alias vf="$EDITOR \$(find . -type f |fzf)"
alias vfr="$EDITOR \$(find * -type f |fzf)"

# pkg manager aliases
alias pdd="pacman -Qdt"
alias pkgs="pacman -Qqen > ~/Documents/packages.txt"
alias pkgsa="pacman -Qqem > ~/Documents/packages_aur.txt"

# mounts
alias mx="sudo mount -t cifs //asmodeus/jay /mnt/x -o username=jay,uid=1000,gid=1000"
alias my="sudo mount -t cifs //asmodeus/pub /mnt/y -o username=jay,uid=1000"

# dotfiles repo
alias dotf='/usr/bin/git --git-dir=$HOME/Documents/dotfiles --work-tree=$HOME'

# other
export BAT_THEME="Dracula"

# fpath+=($HOME/.zsh/pure)
# autoload -U promptinit; promptinit 
# prompt pure
#

eval "$(zoxide init --cmd z zsh)"
eval "$(starship init zsh)"
