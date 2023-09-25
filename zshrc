# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make terminal feel like home
if [ "$(command -v fortune)" ]; then
    fortune $HOME/.config/fortunes/nikoli
    alias fortune='fortune $HOME/.config/fortunes/nikoli'
fi

# zsh plugin manager
ZNAPDIR=$HOME/.local/repos/znap/
[[ -r $ZNAPDIR/znap.zsh ]] ||
	git clone --depth 1 -- \
			https://github.com/marlonrichert/zsh-snap.git $ZNAPDIR 
source $ZNAPDIR/znap.zsh

# source will both clone and start a plugin
znap source romkatv/powerlevel10k
znap source zsh-users/zsh-autosuggestions
# Syntax hilighting "source as last plugin"
znap source zsh-users/zsh-syntax-highlighting

# Precaution incase XDG_CONFIG_HOME is unset? What is wrong with me?
export ZSHCONFIG=${XDG_CONFIG_HOME:=$HOME/.config}/zsh
[ -f $HOME/.aliases.sh ] && source $HOME/.aliases.sh
[ -f $ZSHCONFIG/aliases.sh ] && source $ZSHCONFIG/aliases.sh

# Enable 256 color support for applications
# I have never actually used xterm, I really don't understand the whole $TERM
# variable thing. Confusion peaked when I read about people going through steps
# to be able to set/use $TERM="alacritty" --what are the reasons for doing that?
[ "$TERM" = "xterm" ] && export TERM=xterm-256color

# `dircolors` prints out `LS_COLORS='...'; export LS_COLORS`, so eval'ing
# $(dircolors) effectively sets the LS_COLORS environment variable.
# DIRCOLORSFILE=$HOME/.dircolors
# DIRCOLORSFILE="$ZSHCONFIG/dircolors/dircolors.edit1"
# eval "$(dircolors /home/nikoli/.config/zsh/dircolors/dircolors.edit1)" 

# Apply the bash default aliases for ls and grep 
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Use vim as the manpager (requires vim-manpager)
export MANPAGER="nvim -c MANPAGER -"

# dotfiles link management
export DOTFILES_REPO_PATH="$HOME/.dotfiles"

# Enable extglob pattern recognition
setopt extendedglob

# Make globbing case insensitive
unsetopt CASE_GLOB

# Change directory given just path
setopt autocd

# Share history between multiple zsh sessions
HISTFILE=$ZSHCONFIG/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

# No beep on error, no errors if no pattern match
unsetopt beep nomatch

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Auto insert next character for first possible match 
#setopt menu_complete

# Check for .envrc file before every prompt
#eval "$(direnv hook zsh)"

# thefuck config
# toggleable b/c can be slow sometimes
# NTS: if [ false ]; and if [ 0 ] actually return true
if false; then
	eval $(thefuck --alias)
	unsetopt correct
	unsetopt correct_all
	eval $(thefuck --alias --enable-experimental-instant-mode)
fi

# Terminal bookmarks
if [ -f $HOME/.local/bin/bourne-apparish ]; then
	source $HOME/.local/bin/bourne-apparish
fi

# Fuzzy Search
# Added by .fzf/install; see .fzf/uninstall for removal
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
if [[ -f /usr/share/autojump/autojump.zsh ]]; then
	. /usr/share/autojump/autojump.zsh
fi

# Use ripgrep for fzf
[[ -n rg ]] && export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# want to be able to fuzzy search file contents
# using ripgrep combined with preview
fif() {
	# find-in-file - usage: fif <searchTerm>
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' --preview-window='70%:wrap' || rg --ignore-case --pretty --context 10 '$1' {}"
}

rga-fzf() {
	# open file after the fuzzy search of contents. Should also search pdfs, docs
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	xdg-open "$file"
}
alias rgafzf='rga-fzf'
alias rgf='rga-fzf'

# alternative using ripgrep-all (rga) combined with fzf-tmux preview
# implementation below makes use of "open" on macOS, which can be replaced by other commands if needed.
# allows to search in PDFs, E-Books, Office documents, zip, tar.gz, etc. (see https://github.com/phiresky/ripgrep-all)
# find-in-file - usage: fif <searchTerm> or fif "string with spaces" or fif "regex"
# fif() {
#     if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
#     local file
#     file="$(rga --max-count=1 --ignore-case --files-with-matches --no-messages "$@" | fzf-tmux +m --preview="rga --ignore-case --pretty --context 10 '"$@"' {}")" && open "$file"
# }

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
