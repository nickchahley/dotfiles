# sourcing profile in sh emulation mode does not seem to work for me 
# Zsh runs ~/.zprofile, not ~/.profile, when it is invoked as a login shell. The
# reason is that zsh has enough incompatibilities with standard shells to break
# scripts. So we will source ~/.profile in sh emulation mode
# emulate sh -c '~/.profile'

export EDITOR=/usr/bin/nvim

# Keyboard layout (X servers) in sway I config libinput in sway config
setxkbmap -layout us -variant colemak -option "caps:escape"

# trying for video acceleration (really just non-laggy browsers when videos
# playing)
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_ENABLE_WAYLAND=1
