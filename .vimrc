set nocompatible              " be iMproved, required
filetype off                  " required
set relativenumber                    " show line numbers
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
syntax enable
set background=dark
colorscheme solarized

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map ='<c-p>'
let g:ctrlp_cmd ='CtrlP'
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|bower_components|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_open_multiple_files = '1vjr'

" Settings

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" highlight trailing whitespace in red

highlight ExtraWhitespace ctermbg=red ctermfg=red guibg=#ff0000 guifg=#ff0000
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

" Mapped keys

" Kill white space
command! Kws %s/\s\+$// | let @/ = ""

