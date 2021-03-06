" {{{ Automatically install vim-plug if DNE
	if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
		silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
	endif
" }}}
" {{{ Plugins to load/install
	call plug#begin('~/.local/share/nvim/plugged')

		" Utility
		Plug 'vimwiki/vimwiki'
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-eunuch' " Sugar for shell commands
		Plug 'wesQ3/vim-windowswap'
		Plug 'gioele/vim-autoswap'
		Plug 'godlygeek/tabular'
		Plug 'christoomey/vim-titlecase'
		Plug 'reedes/vim-wheel'

		" Filetypes and Services
		Plug 'gabrielelana/vim-markdown'
		Plug 'mrtazz/simplenote.vim'
		Plug 'mboughaba/i3config.vim'
		Plug 'nickchahley/vim-manpager'

		" Python
		Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
		Plug 'nickchahley/pydoc.vim'
		Plug 'tmhedberg/SimpylFold'
		Plug 'vim-scripts/indentpython.vim'

		" Themes, Apperance, Colors
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'ryanoasis/vim-devicons'
		Plug 'skielbasa/vim-material-monokai'
		Plug 'jacoborus/tender.vim'
		Plug 'crusoexia/vim-dracula'
		Plug 'crusoexia/vim-dream'  

		" Writing prose 
		Plug 'junegunn/goyo.vim'
		Plug 'junegunn/limelight.vim' 
		Plug 'dbmrq/vim-redacted'

	call plug#end()
" }}}

" PLUGIN OPTIONS

" {{{ Colorscheme and Theme
	" toggle italic support for certain colorschemes
	let g:monokai_term_italic = 0
	let g:monokai_gui_italic  = 1
	let g:dream_italic   = 1
	let g:dracula_italic = 1

	" material-monokai
	let g:materialmonokai_italic = 0
	let g:airline_theme = 'materialmonokaiedit'
" }}}
" {{{ Airline
	let g:airline#extensions#tabline#enabled    = 1
	let g:airline#extensions#whitespace#enabled = 0
	" show functin name + params
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline#extensions#tagbar#flags = 's'
" }}}
" {{{ Semshi - python
	let g:semshi#error_sign_delay = 4
	let g:semshi#excluded_hi_groups = []
" }}}
" {{{ vimwiki 
	nmap <Leader>w<Space> <Plug>VimwikiIndex

	" Color header levels
	let g:vimwiki_hl_headers = 1
	
	" Registered wikis, can open by list index w/ [1,2,etc]<Leader>w<Space>
	" What are templates and how do we use them
	let g:vimwiki_list = [
		\{
		\ 'path': '/home/nikoli/vimwiki/wiki-DJG',
		\ 'syntax': 'markdown',
		\ 'ext': '.wiki',
		\ 'path_html': '/home/nikoli/vimwiki/wiki-DJG/site_html/'
		\ },{ 
		\ 'path': '~/vimwiki',
		\ 'syntax': 'markdown',
		\ 'ext': '.wiki',
		\ 'path_html': '~/vimwiki/site_html/'
		\ },{
		\ 'path': '/home/nikoli/Clone/McGill/Courses/NEUR 630/Term Paper/wiki',
		\ 'syntax': 'markdown',
		\ 'ext': '.wiki'
		\ },{
		\ 'path': '/home/nikoli/OneDrive/McGill/Courses/BMDE 508/Grant Proposal/wiki',
		\ 'syntax': 'markdown',
		\ 'ext': '.wiki'
		\ }]

	" Keymaps
	" Oh my god do shift mappings work in terminal now? No.
	:nmap <leader>s <Plug>VimwikiToggleListItem
	:nmap <C-J> <Plug>VimwikiSplitLink
	:nmap <C-V> <Plug>VimwikiVSplitLink

	" Foldmethod, list, expr (headers and sections), syntax
	let g:vimwiki_folding = 'syntax'

	
" }}}
" {{{ goyo
	let g:goyo_width = 85
	let g:goyo_height = 90
" }}}
" {{{ gabrielelana/vim-markdown
	let g:markdown_enable_spell_checking = 0
	let g:markdown_enable_conceal = 1
	let g:markdown_mapping_switch_status = '<space>s'
	let g:markdown_drop_empty_blockquotes = 0
" }}}
" {{{ vim-wheel
	let g:wheel#map#up='<C-u>'
	let g:wheel#map#down='<C-y>'
" }}}
" {{{ Simplenote 
	source $VIMHOME/simplenoterc
	let g:SimplenoteFiletype = "markdown"
	" Single window mode
	let g:SimplenoteSingleWindow = 1
	" open :SimplenoteList either a vs or hs (def) split
	"let g:SimplenoteVertical = 0
	" set scratch buffer to X lines tall. Which ones is the scratch buffer?
	"let g:SimplenoteListHeight=10
" }}}
" {{{ vim-autoswap
	set title titlestring=
" }}}
