" Transitioning from vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" {{{ Plugins

	" {{{ Automatically install vim-plug if DNE
	if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
		silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
	endif
	" }}}

	" Load Plugins
	call plug#begin('~/.local/share/nvim/plugged')
		Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
		Plug 'fs111/pydoc.vim'
		Plug '/usr/share/fzf'
		Plug 'junegunn/fzf.vim'
	call plug#end()

	" Semshi 
	let g:semshi#error_sign_delay = 4
	let g:semshi#excluded_hi_groups = []

	" PyDoc
	let g:pydoc_cmd = 'python -m pydoc'
	let g:pydoc_highlight=0

	" FZF --- fuzzy find ...
	" ..files cwd
	nmap <leader>f :Files<cr>
	" ..lines in current file
	nmap <leader>/ :BLines<cr>
	" ..an open buffer 
	nmap <leader>b :Buffers<cr>
	" ..text in cwd
	nmap <leader>r :Rg<cr>
	" ..vim commands
	nmap <leader>cm :Commands<cr>

" }}}

" Show incremental find/replace
set inccommand=split

" {{{ GUI options
if exists("gnvim")
	set vb t_vb= "Disable error bell (gvim only)
	set guifont=Iosevka\ Term\ Medium:h11
	
	" " Bars--  menubar, toolbar, scrollbar
	" " '=' replace    '+=' add    '-=' rm
	" set guioptions -=m " menubar 
	" set guioptions -=T " toolbar 
	" set guioptions -=r
	" set guioptions -=L
endif
" }}}
