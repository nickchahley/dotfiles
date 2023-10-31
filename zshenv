export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/scripts:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# use this for cloning/building git repos
export REPOS="$HOME/.local/repos"
[ -d "$REPOS" ] || mkdir "$REPOS"

# python scripts here will be accessible wherever
export PYTHONPATH="$HOME/.local/modules/py"

# for sway-desktop-launcher
export TERMINAL=alacritty

# suggested some places, see if this helps anything
export MOZ_ENABLE_WAYLAND=1

# this may or may not be accessible to grimshot (hope yes)
# if xdg_screenshots_dir not set, appears to default to xdg_pictures_dir
# but I don't know how to access that var from shell 
# ex. echo $XDG_PICTURES_DIR returns nothing
export XDG_SCREENSHOTS_DIR="$HOME/pictures/Screenshots"

export RANGER_LOAD_DEFAULT_RC=false

# might be too lazy to run iwconfig
export WIFICARD='wlp0s20f3'
. "$HOME/.cargo/env"
