"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件管理配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 利用 Vundle 管理自身
Plugin 'VundleVim/Vundle.vim'

" 窗口管理器
Plugin 'vim-scripts/winmanager'

Plugin 'vim-scripts/taglist.vim'

" 状态栏
Plugin 'Lokaltog/vim-powerline'

call vundle#end()

filetype plugin indent on

filetype on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基本配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" 显示行号
set number

" 显示匹配的符号
set showmatch

" 增量查找
set incsearch

" 高亮查找结果
set hlsearch

" 忽略大小写
set ignorecase

set smartcase

" 关闭自动备份文件
set nobackup

" 启用自动缩进
set autoindent

" 保持两行状态栏
set laststatus=2

" 记录 50 条历史命令
set history=50

" 设置 tab 大小
set tabstop=8

" 启用语法高亮
syntax on

" 启用文件类型识别，文件类型缩进及插件加载
filetype on
filetype indent on
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 编辑配置文件的快捷方式
nmap <F2> :sp<CR>:e $MYVIMRC<CR>

" 输入模式下，括号自动补全
imap ( ()<ESC>i
imap [ []<ESC>i
imap { {}<ESC>i

" 窗口分割，水平及垂直分割
nmap ,3 :sp<CR>
nmap ,4 :vsp<CR>

" 不同窗口间移动光标
nmap ,k :wincmd k<CR>
nmap ,j :wincmd j<CR>
nmap ,h :wincmd h<CR>
nmap ,l :wincmd l<CR>

nmap wm :WMToggle<CR>
let g:winManagerWindowLayout="FileExplorer,BufExplorer|TagList"