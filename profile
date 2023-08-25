# PATH 
# TODO: source zsh/path.sh?
# These are also present in zsh/path.sh. I need to consolidate/refactor
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
	export PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.local/bin/djgroup_bin" ] ; then
	export PATH="$HOME/.local/bin/djgroup_bin:$PATH"
fi
if [ -d "$HOME/.gem/ruby/2.5.0/bin:$PATH" ] ; then
	# Ruby is for sass and scss
	export PATH="$HOME/.gem/ruby/2.5.0/bin:$PATH"
fi

# Python/Conda Path Config -- don't delete this, you Melvin
export PATH="/home/nikoli/.miniconda3/bin:$PATH"
# alias python3='~/.miniconda3/bin/python'

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/terminator
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Keyboard layout
setxkbmap -layout us -variant colemak -option "caps:escape"


## WM Specific things??
# Start dropbox service
# dropbox &

# PolicyKit authentication, so can launch things like gparted from rofi
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Side shortcuts for file managers
# xdg-user-dirs-gtk-update &

