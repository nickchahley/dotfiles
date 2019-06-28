### Hello zsh config file
# Enable extglob pattern recognition
setopt extendedglob

# Make globbing case insensitive
unsetopt CASE_GLOB

# Change directory given just path
setopt autocd

# Share history between multiple zsh sessions
setopt appendhistory

# No beep on error, no errors if no pattern match
unsetopt beep nomatch

# emacs-style line editing
bindkey -e

## The following lines were added by compinstall
zstyle :compinstall filename '/home/nikoli/.zshrc'

autoload -Uz compinit
compinit
## End of lines added by compinstall

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Auto insert next character for first possible match 
#setopt menu_complete

# Enable 256 color support for applications
# somehow this allows for truecolor in vim
if [ "$TERM" = "xterm" ]
then
    export TERM=xterm-256color
fi

# Path to aliases file 
source $HOME/.config/zsh/aliases.sh
# Machine local aliases (untracked by git)
source $HOME/.config/zsh/aliases.local.sh

# Make terminal feel like home again
alias fortune='fortune ~/.config/fortunes/nikoli'
fortune

# `dircolors` prints out `LS_COLORS='...'; export LS_COLORS`, so eval'ing
# $(dircolors) effectively sets the LS_COLORS environment variable.
eval "$(dircolors /home/nikoli/.config/zsh/dircolors/dircolors.edit1)" 

## oh-my-zsh options {{{
#Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/zsh/oh-my-zsh

# Hypen-insensitive completion
# Case sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

## Prompt / Theme --diff b/t the two?
# Enable prompt themes
autoload -Uz promptinit && promptinit

ZSH_THEME="pure"

# Syntax hilighting "source as last plugin"
plugins=(zsh-syntax-highlighting)

# Make sure this goes after prompt config, else no fancy prompt
# .config is kinda a nightmare, but is there a better place for this?
source $ZSH/oh-my-zsh.sh

## end oh-my-zsh options }}}
# Added by .fzf/install; see .fzf/uninstall for removal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#. /usr/share/autojump/autojump.zsh

# Check for .envrc file before every prompt
#eval "$(direnv hook zsh)"

# Paths for tensorflow gpu 
source ~/.config/zsh/tensorflow_gpu.sh

# dotfiles link management
export DOTFILES_REPO_PATH="$HOME/.dotfiles"

# let rclone browser open terminals
export TERMINAL="/usr/bin/terminator"

# Source this even though it's in profile since something about that setup
# doesn't work
source ~/.config/zsh/path.sh

eval $(thefuck --alias)
#unsetopt correct
#unsetopt correct_all
#eval $(thefuck --alias --enable-experimental-instant-mode)

# Use ripgrep for fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# Use vim as the manpager (requires vim-manpager)
export MANPAGER="nvim -c MANPAGER -"

# Terminal bookmarks
source ~/.local/bin/bourne-apparish
