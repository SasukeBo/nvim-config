let g:envs = []
let db = {
			\"name": "Local Postgres",
			\"url": "postgresql://postgres:thingyouwe@localhost:32432",
			\}
call add(g:envs, db)

let g:pgdbs = ['account', 'auth']
let g:env = g:envs[0].url
let g:pgdb = g:pgdbs[0]
