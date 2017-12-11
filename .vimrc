call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'rhysd/vim-crystal'
Plug 'altercation/vim-colors-solarized'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/mru.vim'
Plug 'rust-lang/rust.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'

call plug#end()

" VIM External Function
" Hide Original VIM Status

" hide VIM status
" like -- INSERT --
set noshowmode

" Show number in the left side
set number

" Set color for `:set number`
" command on the left side
highlight LineNr ctermfg=grey ctermbg=black

" Auto indent on save
" https://coderwall.com/p/phy6cg/vim-auto-indent-on-save
" ts aka tabspace
" sw aka spacewidth
augroup autoindent
    set expandtab ts=2 sw=2 ai
    au!
    autocmd BufWritePre *.cr,*.c,*.cpp,*.js,*.rb,*.r,*.rust :normal migg=G`i
augroup End

