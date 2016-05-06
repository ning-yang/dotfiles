" ***** loading vimplug ***** 
call plug#begin('~/.vim/plugged')
function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
        !./install.py
    endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'bling/vim-airline'
Plug 'klen/python-mode'
Plug 'easymotion/vim-easymotion'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'tpope/vim-fugitive'                               " git plugin
Plug 'sheerun/vim-polyglot'                             " language package
Plug 'nelstrom/vim-visual-star-search'
Plug 'Raimondi/delimitMate'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'bogado/file-line'
Plug 'sjl/gundo.vim'

call plug#end()
