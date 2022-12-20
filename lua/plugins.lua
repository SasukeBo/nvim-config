vim.cmd("packadd packer.nvim")

local packer = require('packer')

packer.startup{function(use)
	use 'wbthomason/packer.nvim'
	-- 用来提供一个导航目录的侧边栏
	use 'scrooloose/nerdtree'
	-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	-- 可以快速对齐的插件
	use 'junegunn/vim-easy-align'


	-- 可以使 nerdtree 的 tab 更加友好些
	use 'jistr/vim-nerdtree-tabs'

	-- 查看当前代码文件中的变量和函数列表的插件，
	-- 可以切换和跳转到代码中对应的变量和函数的位置
	-- 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
	use 'majutsushi/tagbar'

	-- 自动补全括号的插件，包括小括号，中括号，以及花括号
	use 'jiangmiao/auto-pairs'

	-- Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
	use 'vim-airline/vim-airline'

	-- 有道词典在线翻译
	use 'ianva/vim-youdao-translater'

	-- 可以在文档中显示 git 信息
	use 'airblade/vim-gitgutter'

	-- 可以在 vim 中使用 tab 补全
	use 'vim-scripts/SuperTab'

	-- google格式化工具，支持多种类型文件格式化
	use 'google/vim-maktaba'
	use 'google/vim-codefmt'
	use 'google/vim-glaive'

	-- 配色方案
	-- colorscheme neodark
	use 'KeitaNakamura/neodark.vim'
	-- colorscheme github 
	use 'acarapetis/vim-colors-github'
	-- colorscheme one 
	use 'rakr/vim-one'

	-- go 主要插件
	use 'fatih/vim-go' --, { 'tag': '*' }
	-- go 中的代码追踪，输入 gd 就可以自动跳转
	use 'dgryski/vim-godef'

	-- markdown 插件
	use 'iamcco/mathjax-support-for-mkdp'
	-- use 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

	-- Vim 	use for the Perl module / CLI script 'ack' https://github.com/mileszs/ack.vim
	use 'mileszs/ack.vim'

	-- 模糊搜索文件
	use 'kien/ctrlp.vim'

	-- graphql highlight
	use 'jparise/vim-graphql'

	-- https://github.com/tpope/vim-fugitive vim 	use for git
	use 'tpope/vim-fugitive'

	-- The Most Recently Used (MRU) 	use
	use 'vim-scripts/mru.vim'

	use 'ycm-core/YouCompleteMe'

	use 'tpope/vim-dadbod'
end
}
