# TODO shared-zsh-fish things should go to local/bin
# TODO environment variables so that can use fish as login
if status is-interactive

	if test "(command -v fortune)"
		fortune $HOME/.config/fortunes/nikoli
		alias fortune='fortune $HOME/.config/fortunes/nikoli'
	end

	source ~/.config/fish/aliases.fish
	source ~/.miniconda3/etc/fish/conf.d/conda.fish

	# below are some things that could be put into a shared fish-sh of profile file
	# Use vim as the manpager (requires vim-manpager)
	export MANPAGER="nvim -c MANPAGER -"
	# Use ripgrep for fzf
	# [[ -n rg ]] && export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

	starship init fish | source
end

# vim:set ts=2:
