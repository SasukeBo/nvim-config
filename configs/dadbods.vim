"==============================================================================
"  							tpope/vim-dadbod 插件
"  							数据库客户端，支持多种客户端
"==============================================================================
let g:dadbods = []
" if g:db and b:db is set up -- b:db will be used.
" so g:db would serve as a default database (first in the list)
let g:db = g:dadbods[0].url

command! DBSelect :call popup_menu(map(copy(g:dadbods), {k,v -> v.name}), {
			\"callback": 'DBSelected'
			\})

func! DBSelected(id, result)
	if a:result != -1
		let b:db = g:dadbods[a:result-1].url
		echomsg 'DB ' . g:dadbods[a:result-1].name . ' is selected.'
	endif
endfunc

func! DBExe(...)
	if !a:0
		let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
		return 'g@'
	endif
	let sel_save = &selection
	let &selection = "inclusive"
	let reg_save = @@

	if a:1 == 'char'	" Invoked from Visual mode, use gv command.
		silent exe 'normal! gvy'
	elseif a:1 == 'line'
		silent exe "normal! '[V']y"
	else
		silent exe 'normal! `[v`]y'
	endif

	execute "DB " . @@

	let &selection = sel_save
	let @@ = reg_save
endfunc

" Key map
xmap <expr> <Plug>(DBExe) 	  DBExe()
nmap <expr> <Plug>(DBExe) 	  DBExe()
nmap <expr> <Plug>(DBExeLine) DBExe() . '_'

xmap <leader>db  <Plug>(DBExe)
nmap <leader>db  <Plug>(DBExe)
omap <leader>db  <Plug>(DBExe)
nmap <leader>dbb <Plug>(DBExeLine)

