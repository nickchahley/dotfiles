# For some reason conda binary became superseeded by /usr/sbin/python and
# /sbin/python when I moved this code to ~/.profile and ~/.zprofile
# PATH 
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
alias python3='~/.miniconda3/bin/python'
