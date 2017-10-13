""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" editorConfig vim plugin
Plugin 'editorconfig/editorconfig-vim'

" vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" all of plugins must be added before the following line
call vundle#end()

filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" " Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show line number
set number

" match setting
set showmatch
set smartcase

" search setting
set hlsearch
set incsearch
set ignorecase

" do not auto-back
set nobackup

" no max line length indicator will be shown
let g:EditorConfig_max_line_indicator = "none"

" disable the folding configuration for vim markdown
let g:vim_markdown_folding_disabled = 1
