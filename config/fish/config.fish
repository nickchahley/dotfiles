# TODO shared-zsh-fish things should go to local/bin
# TODO environment variables so that can use fish as login
if status is-interactive
	source ~/.config/fish/aliases.fish

	# open new terminals in previous working dir
	function cd
		builtin cd "$argv"
		pwd > ~/.lastdir
	end
	if test -f ~/.lastdir
		cd (cat ~/.lastdir)
	end

	if type -q fortune
		fortune $HOME/.config/fortunes/nikoli
		alias fortune='fortune $HOME/.config/fortunes/nikoli'
	end

	if test -e ~/.miniconda3/etc/fish/conf.d/conda.fish
		source ~/.miniconda3/etc/fish/conf.d/conda.fish
	end

	# below are some things that could be put into a shared fish-sh of profile file

	# Use vim as the manpager (requires vim-manpager)
	export MANPAGER="nvim -c MANPAGER -"

	# # Use ripgrep for fzf
	if type -q rg
		export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
	end
	
	zoxide init fish | source
	starship init fish | source

end

# vim:set ts=2 sw=2:
