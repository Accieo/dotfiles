return {
	-- Package manager
	"folke/lazy.nvim",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("config.treesitter")
		end,
	},

	-- Better integrated terminal support
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("config.toggleterm")
		end,
	},

	-- Close brackets automatically
	{
		"windwp/nvim-autopairs",
		config = function()
			require("config.autopairs")
		end,
	},

	-- Themes
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").load()
		end,
	},

	-- LSP
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		config = function()
			require("config.mason")
			require("config.lspconfig")
		end,
	},

	-- LSP Saga
	{
		"glepnir/lspsaga.nvim",
		config = function()
			require("config.lspsaga")
		end,
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("config.telescope")
		end,
	},

	-- Autocomplete
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("config.cmp")
		end,
	},

	-- Snippets
	"rafamadriz/friendly-snippets",

	-- Text formatter
	{
		"onsails/lspkind-nvim",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("config.lspkind")
		end,
	},

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("config.lualine")
		end,
	},

	-- File explorer
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("config.nvim_tree")
		end,
	},

	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("config.gitsigns")
		end,
	},

	-- Surround
	{
		"kylechui/nvim-surround",
		config = function()
			require("config.nvim_surround")
		end,
	},

	-- Dashboard
	{
		"goolord/alpha-nvim",
		config = function()
			require("config.alpha")
		end,
	},

	-- Discord presence
	{
		"andweeb/presence.nvim",
		config = function()
			require("config.presence")
		end,
	},
}
