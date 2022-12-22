"==============================================================================
"  							tpope/vim-dadbod 插件
"  							数据库客户端，支持多种客户端
"==============================================================================
" if g:db and b:db is set up -- b:db will be used.
" so g:db would serve as a default database (first in the list)
" g:dadbods declared in dadbods_urls.vim

let g:db = g:envs[0].url . "/" . g:pgdbs[0]

function! s:selectDB(selected)
	let g:pgdb = a:selected
	let b:db = g:env . "/" . g:pgdb
endfunction

function! s:selectEnv(selected)
	for env in g:envs
		if env.name == a:selected
	 		let g:env = env.url
			break
		endif
	endfor
	let b:db = g:env . "/" . g:pgdb
endfunction

command! DBSelect :call popup_menu#open(g:pgdbs, { selected -> s:selectDB(selected)})
command! DBEnvSelect :call popup_menu#open(map(copy(g:envs), {k,v -> v.name}), { selected -> s:selectEnv(selected)})

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

