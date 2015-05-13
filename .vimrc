set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Settings

syntax on
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

