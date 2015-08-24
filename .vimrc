set nocompatible              " be iMproved, required
filetype off                  " required
set relativenumber                    " show line numbers
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
syntax enable
set background=dark
colorscheme solarized

" Plugins

let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_depth=20
let g:ctrlp_by_filename=0
let g:ctrlp_max_files=0

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

