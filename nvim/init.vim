" Transitioning from vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

""" Plugins (vim-plug)

" Automatically install if DNE
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

" Semshi options
let g:semshi#error_sign_delay = 4
let g:semshi#excluded_hi_groups = []

" Incremental hilight for replace
"set inccommand=nosplit
set icm=nosplit
