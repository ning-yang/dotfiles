" ================ Global Settings ================
set nocompatible
let mapleader=","                           " leader is comma
set autochdir                               " auto change working directory
nnoremap <leader>sv :source $MYVIMRC<CR>    " reload vimrc

" ================ jk is escape ================
inoremap jk <esc>
set clipboard+=unnamedplus  " copy text to system clipboard


" ================ loading vimplug ================ 
if filereadable(expand("~/.vim/vimplug.vim"))
    source ~/.vim/vimplug.vim
endif


" ================ plugin settings ================
if filereadable(expand("~/.vim/vimplug.vim"))
    source ~/.vim/settings.vim
endif



" ================ General Settings ================
filetype plugin indent on
syntax on
" colorscheme Tomorrow-Night-Eighties
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid
set autoread                " reload file changed outside vim
set hidden                  " better buffer performance

" lead + w to save file and lead + q to close file 
nnoremap <leader>w :w<CR> 
nnoremap <leader>q :q<CR>

" replace grep with ag
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap <Leader>g :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" ================ scrolling ================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ buffer settings ================
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" ================ Spelling settings ================
set spell
setlocal spell spelllang=en_us " turn on spell check
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" ================ Edit and UI Config Group ================
set tags=tags; " CTag settings 
" Expend path with %%\
cabbr <expr> %% expand('%:p:h')

" set colorcolumn=80 
" set textwidth=79  " lines longer than 79 columns will be broken
set encoding=utf-8
set shiftwidth=4        " operation >> indents 4 columns; << unindents 4 columns
set backspace=2         " make backspace work like most other apps
set tabstop=4           " a hard TAB displays as 4 columns
set expandtab           " insert spaces when hitting TABs
set softtabstop=4       " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround          " round indent to multiple of 'shiftwidth'
"set autoindent          " align the new line indent with the previous line
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set cursorline          " highligh current line
hi cursorline cterm=None 
"ctermbg=237
highlight LineNR term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set title
set number              " show linenumber
set ignorecase          " search ignore case
set smartcase           " Auto case sensitive search

" use ,d to do delete without past
nnoremap x "_x

" Search
set incsearch           " search as characters are entered
" set hlsearch            " highlight matches
" nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     
hi Folded ctermbg=0

" Backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
