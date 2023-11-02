source $XDG_CONFIG_HOME/aliases.sh
if test -e $HOME/.aliases.sh
	source $HOME/.aliases.sh 
end
alias raf='source ~/.config/fish/aliases.fish'
alias alf='vim ~/.config/fish/aliases.fish && raf'

# trying some replacements for default unix tools
if test -e "$HOME/.cargo/bin/eza"
	alias ls='eza --hyperlink'
else
	alias ls='ls --hyperlink=auto --color=auto'
end

# Terminal clipboard utilites {{{
# `p` executes v cmd first and then substitutes it in place
# pwd | y %% echo `p` 
if test $XDG_SESSION_TYPE = 'wayland'
	alias y='wl-copy'                      
	alias p='wl-paste'
	alias lns='ln -s "`wl-paste`"'
	alias lnp='linktopaste'
	alias ycd='pwd | y'
	alias cdp='cd "`wl-paste`"'
	alias mvp='mv "`wl-paste`" ./'
	alias ep='nvim `wl-paste`'
else
	alias y='xclip -selection clipboard'  # System clipboard
	alias p='xclip -o -selection clipboard'
	alias lns='ln -s "`xclip -o`"'
	alias ycd='pwd | y'
	alias cdp='cd "`xclip -o`"'
	alias mvp='mv "`xclip -o`" ./'
	alias ep='nvim `xclip -o`'
end
# }}}

# vim: ft=fish: ts=2: sw=2: set nowrap:
