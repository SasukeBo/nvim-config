" map教程可以查看https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" normal 模式匹配
""""""""""""""""""""""""""""""""""""""""
nmap gh <C-W>h
nmap gk <C-W>k
nmap gj <C-W>j
nmap gl <C-W>l
" change buf file
nmap <Leader>b <C-o>
nmap <Leader>p <C-^>
" Go keymaps
nmap <Leader>g :GoDef<CR>
nmap <Leader>i :GoImplements<CR>
nmap <Leader><S-c> :GoCallers<CR>
nmap <Leader>m :Autoformat<CR>
" 系统剪切板复制粘贴
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
"""""""""""""""""""""""""""""""""""""""""

" 模式匹配
""""""""""""""""""""""""""""""""""""""""
map <Leader>t :tabnew<CR>
map <Leader>tn :tabn<Space>
" 查看历史打开文件
map <Leader>o :browse oldfiles<CR>
" 打开文件目录树
map nt :NERDTreeToggle<CR>
" 打开文件搜索的快捷键
map <S-f> :CtrlP<CR> 
" 打开代码结构树
map <S-t> :TagbarToggle<CR>
" 分屏
map <Leader>v :vsplit<CR>
map <Leader>s :split<CR>
" 切换注释
map <Leader>/ :CommentToggle<CR>
""""""""""""""""""""""""""""""""""""""""

