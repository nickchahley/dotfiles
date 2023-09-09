# Path and Env vars
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
	export PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.local/bin/djgroup_bin" ] ; then
	export PATH="$HOME/.local/bin/djgroup_bin:$PATH"
fi
export PATH="/home/nikoli/.miniconda3/bin:$PATH"

export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/terminator

# Want to use these to build symlinks. Could be aliases, but on WSL I have not
# figured out how to use xclip and c/v like on linux
WORK=/mnt/c/Users/nikoli/Simmunome
DATA=/mnt/c/Users/nikoli/Simmunome/Data

# Keyboard layout
setxkbmap -layout us -variant colemak -option "caps:escape"


## WM Specific things??
# Start dropbox service
# dropbox &

# PolicyKit authentication, so can launch things like gparted from rofi
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Side shortcuts for file managers
# xdg-user-dirs-gtk-update &

