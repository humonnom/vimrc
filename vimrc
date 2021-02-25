set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'pbondoer/vim-42header'
Plugin 'nanotech/jellybeans.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'valloric/youcompleteme' 

call vundle#end()

" taglist
nmap <F8> :Tagbar<CR>

" indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
set laststatus=2
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

" thema
colorscheme jellybeans

" Other settings
set ts=4
set t_Co=256
set number
set nocompatible
set autoindent  " 자동 들여쓰기
set cindent " C 프로그래밍용 자동 들여쓰기
set smartindent " 스마트한
syntax on
" filetype off
highlight Comment term=bold cterm=bold ctermfg=4
set backspace=eol,start,indent

" change escape key
imap jj <Esc>
