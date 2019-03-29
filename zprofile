# Zsh runs ~/.zprofile, not ~/.profile, when it is invoked as a login shell. The
# reason is that zsh has enough incompatibilities with standard shells to break
# scripts. So we will source ~/.profile in sh emulation mode
emulate sh -c '.~/.profile'
