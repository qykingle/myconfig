call plug#begin('~/.vim/plugged')
Plug 'https://github.com/luofei614/vim-plug', { 'dir':'~/.vim/my'}
"Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/mru.vim'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
"Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'gcmt/wildfire.vim'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
"Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'dyng/ctrlsf.vim'
Plug 'honza/vim-snippets'
" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
" Plugin options
Plug 'nsf/gocode', { 'rtp': 'vim' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"zencoding 改名为了 Emmet
Plug 'https://github.com/luofei614/Emmet.vim'
" 下面这个插件可取代Command-T 但是现在暂时不支持目录忽略，所以先暂时不用
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"bookmark  mm 添加书签,  mn 移动书签  mp 移动到前一个书签  ma 删除所有书签
Plug 'MattesGroeger/vim-bookmarks'
"Bundle 'JavaScript-syntax'
Plug 'pangloss/vim-javascript'
" jquery , angularjs 等语法
Plug 'https://github.com/othree/javascript-libraries-syntax.vim.git'
"html5插件
Plug 'othree/html5.vim'
call plug#end()

" 更新时间：2018-05-12
" 定义快捷键的前缀，即 <Leader>
let mapleader=";"
let g:markdown_enable_spell_checking = 0
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
"设置顶端样式
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_theme='angr'
" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 基于标签的代码导航
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
"let g:UltiSnipsSnippetDirectories=["/Users/kingle/.vim/bundle/ultisnips/mysnippets/cpp.snippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
"Syntastic 
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 保存 undo 历史。必须先行创建 .undo_history/
set undodir=~/.undo_history/
set undofile
"激活鼠标
set mouse=a
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 配色方案
set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
"colorscheme lucius
colorscheme dracula
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 禁止折行
set nowrap
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2

"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 文件类型侦测
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

inoremap kj  <Esc>
inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

map zl zL
map zh zH

" Select all text
map <Space>a ggVG
map <leader>ss :setlocal spell!<cr>
map <c-space> ?
map <silent> <leader><cr> :noh<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Close current buffer
map <leader>bd :Bclose<cr>
" Close all buffers
map <leader>ba :1,1000 bd!<cr>
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>g :Ag 

map <leader>nb :e ~/buffer<cr>

nnoremap <Space>k diwi
nnoremap <leader>f :MRU<CR>
nnoremap <leader>o :BufExplorer<cr>
" Redo
nnoremap U <C-r>
nnoremap <Leader>rv :source ~/.vimrc<CR>
" 设置快捷键将系统剪贴板内容粘贴至vim
nnoremap <Leader>p "+p
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>
" 不做任何保存，直接退出 vim
nnoremap <Leader>Q :qa!<CR>
" 快捷键 i 开/关缩进可视化
"nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>il :TagbarToggle<CR>
nnoremap <Leader>in :PlugInstall<CR>
nnoremap <Leader>cl :PlugClean<CR>
" *.cpp 和 *.h 间切换
"nnoremap <silent> <Leader>sw :FSHere<cr>
" 正向遍历同名标签
"nnoremap" <Leader>tn :tnext<CR>
" 反向遍历同名标签
nnoremap <Leader>tp :tprevious<CR>
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nnoremap <Leader>man :Man 3 <cword><CR>
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark 
noremap <leader>nf :NERDTreeFind<cr>
"选中结对符号中的内容
map <SPACE>l <Plug>(wildfire-fuel)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

"设置快捷键，系统复制
vnoremap <Leader>y "+y
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>


" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" tabularize {
    nmap <leader>a& :tabularize /&<cr>
    vmap <Leader>a& :Tabularize /&<CR>
    nmap <Leader>a = :Tabularize /^[^=]*\zs=<CR>
    vmap <Leader>a = :Tabularize /^[^=]*\zs=<CR>
    nmap <Leader>a = > :Tabularize /=><CR>
    vmap <Leader>a=> :Tabularize /=><CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
    nmap <Leader>a:: :Tabularize /:\zs<CR>
    vmap <Leader>a:: :Tabularize /:\zs<CR>
    nmap <Leader>a, :Tabularize /,<CR>
    vmap <Leader>a, :Tabularize /,<CR>
    nmap <Leader>a,, :Tabularize /,\zs<CR>
    vmap <Leader>a,, :Tabularize /,\zs<CR>
    nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
 " }
 " Fugitive {
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gr :Gread<CR>
    nnoremap <silent> <leader>gw :Gwrite<CR>
    nnoremap <silent> <leader>ge :Gedit<CR>
   " Mnemonic _i_nteractive
    nnoremap <silent> <leader>gi :Git add -p %<CR>
    nnoremap <silent> <leader>gg :SignifyToggle<CR>
  "}
