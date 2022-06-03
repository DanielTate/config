
local packer = require("packer")

-- :PackerInstall

packer.startup(
function(use)
	-- Package management
	use "wbthomason/packer.nvim"
	-- Comments
    use "terrortylor/nvim-comment"
	-- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
	-- Icons
	use "ryanoasis/vim-devicons"
	-- Color theme
	use "tomasr/molokai"
	-- Indent guides
	-- use "nathanaelkane/vim-indent-guides"
	-- Silderstripe filetypes
	use "phalkunz/vim-ss"
    -- Preview markdown
    use "skanehira/preview-markdown.vim" -- Need to install mdr
	-- Language server config
	use "neovim/nvim-lspconfig"
	-- Lsp installer
	use {
        -- 'neovim/nvim-lsp-config',
        'williamboman/nvim-lsp-installer',
	}
    -- blade.php
    use 'jwalton512/vim-blade'
	-- Autocomplete
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	-- Snippits
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	-- Hover docs
	use 'glepnir/lspsaga.nvim'              --
	use 'nvim-lua/popup.nvim'               --
	-- Telescope - Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}
	-- Tree view
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
	}

    use 'norcalli/nvim-colorizer.lua'
end
)

require("plugins/treesitter")
require('plugins/lualine')
require("plugins/nvim-cmp")
require("plugins/nvim-tree")
require('nvim_comment').setup()
require("colorizer").setup()

-- Some plugins to looks into
-- use "morhetz/gruvbox"
-- use "pangloss/vim-javascript"
-- use "MaxMEllon/vim-jsx-pretty"
-- use "jiangmiao/auto-pairs"
-- use "alvan/vim-closetag"
-- use "tpope/vim-unimpaired"
-- use "tpope/vim-surround"
-- auto format files. E.g. format js files using typescript.
-- use "mhartington/formatter.nvim"
-- use "tpope/vim-fugitive"
-- use "airblade/vim-gitgutter"
-- use "hrsh7th/nvim-compe"
-- use "mattn/efm-langserver"
-- use "hrsh7th/vim-vsnip"
-- use "hrsh7th/vim-vsnip-integ"
-- Never remember what register contains what? vim-peekaboo to the rescue
-- use "junegunn/vim-peekaboo"
-- use "junegunn/goyo.vim"
-- use "junegunn/limelight.vim"
-- use "tpope/vim-obsession"
--use "haya14busa/is.vim"
--use "nelstrom/vim-visual-star-search"
-- Plug 'nvim-treesitter-textobjects'
-- " Plug 'norcalli/nvim-colorizer.lua' " Highlight hex codes
-- " Plug tpope/vim-ragtag
-- " Plug tpope/vim-surround
-- " Plug tpope/vim-uninpaired
-- " Plug 'tpope/vim-fugitive'
-- " DEP Plug 'dense-analysis/ale' " Real time linting
-- " DEP Plug 'sheerun/vim-polyglot' " Syntax highlighting
-- " DEP Plug 'alexlafroscia/postcss-syntax.vim' " Syntax highlighting
-- " DEP Plug 'othree/html5-syntax.vim'
