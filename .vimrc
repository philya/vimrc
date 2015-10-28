set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'

"Plugin 'wincent/Command-T'

call vundle#end()            " required
filetype plugin indent on

:set guifont=Monaco:h16

if has('gui_running')
    ":set guifont=Monaco\ 20
    " Remove menu bar
    :set guioptions-=m

    " Remove toolbar
    :set guioptions-=T

    :set guioptions-=l 
    :set guioptions-=L 
    :set guioptions-=r 
    :set guioptions-=R 
endif

:set wildignore=*.pyc,*.swp,*.jpg,*.png,*.gif,.hg,.svn

colorscheme desert

map <leader>r :bNext<CR>
map <leader>e :bprevious<CR>


:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent

:set ignorecase

noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>

filetype plugin on
" Alternative: use the following to also enable language-dependent indenting.
filetype plugin indent on

autocmd FileType js setlocal tabstop=2 | setlocal shiftwidth=2
autocmd FileType html setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType scss setlocal tabstop=2 | setlocal shiftwidth=2
autocmd FileType css setlocal tabstop=2 | setlocal shiftwidth=2

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

let g:ctrlp_map = '<Leader>t'
let g:ctrlp_custom_ignore = 'var\|node_modules\|DS_Store\|git'

"autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"augroup mkd
"    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
"augroup END
