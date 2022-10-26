local packer = require 'packer'

packer.startup(function(use)
		-- Package manager
		use 'wbthomason/packer.nvim'

		-- Tree sitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				require('nvim-treesitter.install').setup{}
			end
		}

		-- Close brackets automatically
		use 'windwp/nvim-autopairs'

		-- Themes
		use 'rebelot/kanagawa.nvim'

		-- LSP
		use {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
		}

		-- LSP Saga
		use 'glepnir/lspsaga.nvim'

		-- Telescope
		use {
			'nvim-telescope/telescope.nvim',
			requires = { 'nvim-lua/plenary.nvim' },
		}

		-- Autocomplete
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'L3MON4D3/LuaSnip',
				'saadparwaiz1/cmp_luasnip',
			},
		}

		-- Snippets
		use 'rafamadriz/friendly-snippets'

		-- Text formatter
		use {
			'onsails/lspkind-nvim',
			requires = {
				'hrsh7th/nvim-cmp',
			},
		}

		-- Statusline
		use {
				'nvim-lualine/lualine.nvim',
				requires = { 'kyazdani42/nvim-web-devicons' }
		}

		-- File explorer
		use {
				'kyazdani42/nvim-tree.lua',
				requires = {
					{ 'kyazdani42/nvim-web-devicons' },
				},
		}

		-- Git signs
		use 'lewis6991/gitsigns.nvim'

		-- Surround
		use 'kylechui/nvim-surround'

		-- Dashboard
		use 'goolord/alpha-nvim'

end)
