# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make terminal feel like home again
if [ "$(command -v fortune)" ]; then
    alias fortune='fortune ~/.config/fortunes/nikoli'
    fortune ~/.config/fortunes/nikoli
fi

# Hello zsh config file
export ZSHCONFIG=$HOME/.config/zsh

# Use vim as the manpager (requires vim-manpager)
export MANPAGER="nvim -c MANPAGER -"

# Path to aliases file 
if [ -f ~/.aliases.sh ]; then
    source ~/.aliases.sh
fi
if [ -f $ZSHCONFIG/aliases.sh ]; then
	source $ZSHCONFIG/aliases.sh
fi

# dotfiles link management
export DOTFILES_REPO_PATH="$HOME/.dotfiles"

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

# zsh plugin manager
ZNAPDIR=~/.local/repos/znap/
[[ -r $ZNAPDIR/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $ZNAPDIR 
source $ZNAPDIR/znap.zsh

znap source romkatv/powerlevel10k
znap source zsh-users/zsh-autosuggestions
# Syntax hilighting "source as last plugin"
znap source zsh-users/zsh-syntax-highlighting

# Enable 256 color support for applications
if [ "$TERM" = "xterm" ]
then
    export TERM=xterm-256color
fi

# `dircolors` prints out `LS_COLORS='...'; export LS_COLORS`, so eval'ing
# $(dircolors) effectively sets the LS_COLORS environment variable.
# eval "$(dircolors /home/nikoli/.config/zsh/dircolors/dircolors.edit1)" 
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
if [ -f ~/.local/bin/bourne-apparish ]; then
	source ~/.local/bin/bourne-apparish
fi

## FZF

# Added by .fzf/install; see .fzf/uninstall for removal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [[ -f /usr/share/autojump/autojump.zsh ]]; then
	. /usr/share/autojump/autojump.zsh
fi

# Use ripgrep for fzf
if [[ -n rg ]]; then
	export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
fi

# want to be able to fuzzy search file contents
# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' --preview-window='70%:wrap' || rg --ignore-case --pretty --context 10 '$1' {}"
}

rga-fzf() {
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

# alternative using ripgrep-all (rga) combined with fzf-tmux preview
# implementation below makes use of "open" on macOS, which can be replaced by other commands if needed.
# allows to search in PDFs, E-Books, Office documents, zip, tar.gz, etc. (see https://github.com/phiresky/ripgrep-all)
# find-in-file - usage: fif <searchTerm> or fif "string with spaces" or fif "regex"
# fif() {
#     if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
#     local file
#     file="$(rga --max-count=1 --ignore-case --files-with-matches --no-messages "$@" | fzf-tmux +m --preview="rga --ignore-case --pretty --context 10 '"$@"' {}")" && open "$file"
# }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
