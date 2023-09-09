# Zsh runs ~/.zprofile, not ~/.profile, when it is invoked as a login shell. The
# reason is that zsh has enough incompatibilities with standard shells to break
# scripts. So we will source ~/.profile in sh emulation mode
emulate sh -c '~/.profile'

# don't know why this is not working even though it is in profile
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi
