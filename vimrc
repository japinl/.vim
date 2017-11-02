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

" vim instant markdown
Plugin 'suan/vim-instant-markdown'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim powerline
Plugin 'Lokaltog/vim-powerline'

" gtags
Plugin 'vim-scripts/gtags.vim'

" NeoTree file explorer
Plugin 'scrooloose/nerdtree'

" all of plugins must be added before the following line
call vundle#end()

filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic settings
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

" status line
set laststatus=2

" Window management
nmap ,V :sp<CR>
nmap ,v :vsp<CR>
nmap ,k :wincmd k<CR>
nmap ,j :wincmd j<CR>
nmap ,h :wincmd h<CR>
nmap ,l :wincmd l<CR>
nmap ,c :close<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editorconfig settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" no max line length indicator will be shown
let g:EditorConfig_max_line_indicator = "none"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-markdown settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" disable the folding configuration for vim markdown
let g:vim_markdown_folding_disabled = 1

" enable LaTeX math
let g:vim_markdown_math = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-markdown-preview settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim markdown preview
let vim_markdown_preview_github = 1

let vim_markdown_preview_toggle=3

" use google chrome
let vim_markdown_preview_browser='Google Chrome'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap wm :NERDTreeToggle<CR>
