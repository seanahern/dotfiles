set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins

" ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_depth=20
let g:ctrlp_by_filename=0
let g:ctrlp_max_files=0

" Settings

syntax on
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

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

