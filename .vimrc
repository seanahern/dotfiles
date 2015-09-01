execute pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required
set relativenumber            " show line numbers

syntax enable                 " show syntax, when available
set background=dark           " dark theme
colorscheme solarized         " theme
set visualbell                " disable error bloops
set ruler                     " show cursor position
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%) " show date / time in status bar
set title                     " show title of file in window
set gdefault                  " default find & replace to g

" ---------------
" Settings
" ---------------

" 2 space tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Import Handlebars syntax
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

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

"" CtrlP
let g:ctrlp_map ='<c-p>'
let g:ctrlp_cmd ='CtrlP'
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|bower_components|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = '1vjr'

"" NERD Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

