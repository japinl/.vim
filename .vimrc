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

" Nerdtree
Plugin 'scrooloose/nerdtree'

Plugin 'vim-scripts/a.vim'

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

" 取消高亮显示
nmap ,nh :nohl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap wm :WMToggle<CR>
let g:winManagerWindowLayout="FileExplorer,BufExplorer|TagList"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set t_Co=256
let g:Powerline_colorscheme='solarized256'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let NERDTreeShowBookmarsk=1
let NERDTreeWinSize=25
let NERDTreeHighlightCursorline=0

nmap wn :NERDTree<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap th :A<CR>
nmap thv :AV<CR>
nmap ths :AS<CR>
