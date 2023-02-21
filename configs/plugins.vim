"==============================================================================
"									vim-go 插件
"==============================================================================

let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换，goimports区别在于imports导入的包会将golang内置包分开排列
let g:go_fmt_autosave = 1 " 自动格式化
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 0
let g:godef_split = 2
let g:go_updatetime = 100
let g:go_auto_type_info = 0
let g:go_doc_popup_window = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

"==============================================================================
"									NERDTree 插件[disabled]
"==============================================================================
" 显示行号
let NERDTreeShowLineNumbers=0
" 打开文件时是否显示目录
let NERDTreeAutoCenter=0
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
" let NERDTreeWinSize=31
" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
" 在终端启动vim时，自动打开NERDTree
let g:nerdtree_tabs_open_on_console_startup=0
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"==============================================================================
"								majutsushi/tagbar 插件
"==============================================================================

" majutsushi/tagbar 插件打开关闭快捷键
let g:tagbar_show_linenumbers = 1
let g:tagbar_type_go = {
			\ 'ctagstype' : 'go',
			\ 'kinds'     : [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'n:interfaces',
			\ 'w:fields',
			\ 'e:embedded',
			\ 'm:methods',
			\ 'r:constructor',
			\ 'f:functions'
			\ ],
			\ 'sro' : '.',
			\ 'kind2scope' : {
			\ 't' : 'ctype',
			\ 'n' : 'ntype'
			\ },
			\ 'scope2kind' : {
			\ 'ctype' : 't',
			\ 'ntype' : 'n'
			\ },
			\ 'ctagsbin'  : 'gotags',
			\ 'ctagsargs' : '-sort -silent'
			\ }


"==============================================================================
"							nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ 'Ignored'   : '☒',
			\ "Unknown"   : "?"
			\ }

let g:NERDTreeShowIgnoredStatus = 1


"==============================================================================
"								kien/ctrlp 插件
"==============================================================================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll)$',
			\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
			\ }


"==============================================================================
"								vim-autoformat 插件
"==============================================================================
let g:formatdef_clangformat = "'clang-format -lines='.a:firstline.':'.a:lastline.' --assume-filename=\"'.expand('%:p').'\" -style=\"{BasedOnStyle: Google, IndentWidth: 4, ColumnLimit: 0, AlignConsecutiveAssignments: true, AlignConsecutiveAssignments: true}\"'"
let b:formatters_c = ['clangformat']
let g:formatterpath = ['/opt/homebrew/bin/gofmt', '/opt/homebrew/bin/clang-format', '/Users/sasukebo/.nvm/versions/node/v14.20.0/bin/pretty-js']
let g:python3_host_prog = '/opt/homebrew/bin/python3'

" 打开autoformat调试信息
" let g:autoformat_verbosemode=2

"==============================================================================
"								vim-closetag 插件
"==============================================================================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.wxml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
			\ 'typescript.tsx': 'jsxRegion,tsxRegion',
			\ 'javascript.jsx': 'jsxRegion',
			\ 'typescriptreact': 'jsxRegion,tsxRegion',
			\ 'javascriptreact': 'jsxRegion',
			\ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
