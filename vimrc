" ---------------
" Settings
" ---------------

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on                     " show syntax, when available
colorscheme dracula           " theme
let g:onedark_termcolors=256
set background=light
set visualbell                " visual bell instead of audible
set title                     " show title of file in window
set gdefault                  " default find & replace to g
set number
set tabstop=2 softtabstop=0 shiftwidth=2 smarttab " 2 space tabs
set cursorline
set clipboard=unnamed
set hlsearch
set showmatch

" Import Handlebars syntax
au BufRead,BufNewFile *.handlebars,*.hbs,*.isml set ft=html syntax=handlebars

" Highligh whitespace, and use :Kws command to kill white space
highlight ExtraWhitespace ctermbg=red ctermfg=red guibg=#ff0000 guifg=#ff0000
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
command! Kws %s/\s\+$// | let @/ = ""

" -------
" Plugins
" -------

" vim-airline
set laststatus=2
" let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ' ♎︎ '
let g:airline_right_sep = '  '
let g:airline_section_warning = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
" switch to left / right split (mostly for Nerd Tree)
map <C-h> <C-W>h
map <C-l> <C-W>l

" CtrlP
let g:ctrlp_map ='<c-p>'
let g:ctrlp_cmd ='CtrlP'
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|bower_components|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_dont_split = 'nerdtree'

" NERD Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
set mouse=a
let g:NERDTreeMouseMode=3

execute pathogen#infect()
call pathogen#helptags()
