
execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let NERDTreeShowHidden=1
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
colorscheme nord
set laststatus=2
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=2       " The width of a TAB is set to 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab

"  netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" lightline bar
set laststatus=2
let g:lightline = {
 \ 'colorscheme': 'nord',
 \ 'active': {
 \ 'left':[ [ 'mode', 'paste' ],
 \ [ 'gitbranch', 'readonly', 'filename', 'tagbar','modified' ]
 \ ]
 \ },
 \ 'component': {
 \ 'lineinfo': ' %3l:%-2v'
 \ },
 \ 'component_function': {
 \ 'gitbranch': 'fugitive#head',
 \ }
 \ }
let g:lightline.separator = {
 \ 'left': '', 'right':''
 \}
let g:lightline.subseparator = {
 \ 'left': '', 'right': ''
 \}

let g:lightline.tabline = {
 \ 'left': [ ['tabs'] ],
 \ 'right': [ ['close'] ]
 \ }
set showtabline=2 "Show tabline
set guioptions-=e " Don’t use GUI tabline

