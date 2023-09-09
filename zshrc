### Hello zsh config file
export ZSHCONFIG=$HOME/.config/zsh
export ZSHPLUGINS=$ZSHCONFIG/plugins

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

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Auto insert next character for first possible match 
#setopt menu_complete


## User plugins (trying to slowly move away from oh-my-zsh

# Syntax hilighting "source as last plugin"
source $ZSHPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## The following lines were added by compinstall
# zstyle :compinstall filename '/home/nikoli/.zshrc'
# autoload -Uz compinit
# compinit
## End of lines added by compinstall


# Enable 256 color support for applications
# somehow this allows for truecolor in vim
if [ "$TERM" = "xterm" ]
then
    export TERM=xterm-256color
fi

# Path to aliases file 
if [ -f ~/.aliases.sh ]; then
    source ~/.aliases.sh
fi
if [ -f $ZSHCONFIG/aliases.sh ]; then
	source $ZSHCONFIG/aliases.sh
fi
# Machine local aliases (untracked by git)
if [ -f $ZSHCONFIG/aliases.local.sh ]; then
	source $ZSHCONFIG/aliases.local.sh
fi

# Make terminal feel like home again
if [ "$(command -v fortune)" ]; then
    alias fortune='fortune ~/.config/fortunes/nikoli'
    fortune ~/.config/fortunes/nikoli
fi

# `dircolors` prints out `LS_COLORS='...'; export LS_COLORS`, so eval'ing
# $(dircolors) effectively sets the LS_COLORS environment variable.
eval "$(dircolors /home/nikoli/.config/zsh/dircolors/dircolors.edit1)" 

# Put conda stuff before the prompt in case prompt wants to use that
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nikoli/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nikoli/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nikoli/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nikoli/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

## oh-my-zsh options {{{
#Path to your *oh-my-zsh* installation
# $ZSH is really $OHMYZSH
export ZSH=$ZSHCONFIG/oh-my-zsh

# Hypen-insensitive completion
# Case sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

## Prompt / Theme --diff b/t the two?
# Enable prompt themes
autoload -Uz promptinit && promptinit

ZSH_THEME="pure-two"

# Make sure this goes after prompt config, else no fancy prompt
# .config is kinda a nightmare, but is there a better place for this?
source $ZSH/oh-my-zsh.sh

## end oh-my-zsh options }}}

# Check for .envrc file before every prompt
#eval "$(direnv hook zsh)"

# dotfiles link management
export DOTFILES_REPO_PATH="$HOME/dotfiles"

# thefuck config
# toggleable b/c can be slow sometimes
# NTS: if [ false ]; and if [ 0 ] actually return true
if false; then
	eval $(thefuck --alias)
	unsetopt correct
	unsetopt correct_all
	eval $(thefuck --alias --enable-experimental-instant-mode)
fi


# Use vim as the manpager (requires vim-manpager)
export MANPAGER="nvim -c MANPAGER -"

# Terminal bookmarks
if [ -f ~/.local/bin/bourne-apparish ]; then
	source ~/.local/bin/bourne-apparish
fi

# Added by .fzf/install; see .fzf/uninstall for removal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [[ -f /usr/share/autojump/autojump.zsh ]]; then
	. /usr/share/autojump/autojump.zsh
fi

# Use ripgrep for fzf
if [[ -n rg ]]; then
	export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
fi
