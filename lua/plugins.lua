vim.cmd("packadd packer.nvim")

local packer = require('packer')

packer.startup{function(use)
	-- it is recommended to put impatient.nvim before any other plugins
	-- Speed up loading Lua modules in Neovim to improve startup time.
	use { "lewis6991/impatient.nvim", config = [[require('impatient')]] }
	use 'wbthomason/packer.nvim'
	-- 用来提供一个导航目录的侧边栏
	use {
		'preservim/nerdtree',
		requires = { 'ryanoasis/vim-devicons' }
	}
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
	-- 配色方案
	-- colorscheme [theme]
	use 'KeitaNakamura/neodark.vim'
	use 'acarapetis/vim-colors-github'
	use 'rakr/vim-one'
	use 'tanvirtin/monokai.nvim'
	-- use 'sainnhe/sonokai'

	-- go 主要插件
	use 'fatih/vim-go'
	-- go 中的代码追踪，输入 gd 就可以自动跳转
	use 'dgryski/vim-godef'
	-- markdown 插件
	use 'iamcco/mathjax-support-for-mkdp'
	use {
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end
	}
	use 'tpope/vim-markdown'
	-- Vim	use for the Perl module / CLI script 'ack' https://github.com/mileszs/ack.vim
	use 'mileszs/ack.vim'
	-- 模糊搜索文件
	use 'kien/ctrlp.vim'
	-- graphql highlight
	use 'jparise/vim-graphql'
	-- https://github.com/tpope/vim-fugitive vim	use for git
	use 'tpope/vim-fugitive'
	-- The Most Recently Used (MRU)		use
	use 'vim-scripts/mru.vim'
	-- A code-completion engine for Vim
	use 'ycm-core/YouCompleteMe'
	-- 连接数据库的插件
	use 'tpope/vim-dadbod'
	-- Toggle comments in Neovim
	use 'terrortylor/nvim-comment'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use {
		'Yggdroot/LeaderF',
		run = function() vim.fn[":LeaderfInstallCExtension"]() end
	}
	use 'kamykn/popup-menu.nvim'
	use 'kristijanhusak/vim-dadbod-ui'
	use 'chemzqm/wxapp.vim'
	use 'pangloss/vim-javascript'
	use 'vim-autoformat/vim-autoformat'
	use 'gregsexton/MatchTag'
	-- 自动关闭html类似的标签
	use 'alvan/vim-closetag'
	use 'vim-scripts/nginx.vim'
end}

require('nvim_comment').setup()
require('lualine').setup()
