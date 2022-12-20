"==============================================================================
" vim 内置配置 
"==============================================================================

" 设置 vimrc 修改保存后立刻生效，不用在重新打开
" 建议配置完成后将这个关闭
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 关闭兼容模式
set nocompatible

set nu " 设置行号
set cursorline "突出显示当前行
" set cursorcolumn " 突出显示当前列
set showmatch " 显示括号匹配

" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

" 退出插入模式指定类型的文件自动保存
" au InsertLeave *.go,*.sh,*.gql,*.graphql write

" config ctags path
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'

" 开启24bit的颜色
set termguicolors

" 配色方案，从配色方案插件中选择一种
let g:airline_theme='one'
" colorscheme monokai
" colorscheme sonokai
" colorscheme neodark
" colorscheme github
colorscheme one
" set background=dark " 主题背景 dark/light
