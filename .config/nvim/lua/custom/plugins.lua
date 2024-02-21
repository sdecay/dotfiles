local overrides = require "custom.configs.overrides"

local plugins = {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"nvimtools/none-ls.nvim",
				config = function()
					require "custom.configs.none-ls"
				end,
			},
		},
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"stylua",
				"prettier",
				"clangd",
				"clang-format",
				"gofumpt",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	-- Install a plugin
	-- To make a plugin not be loaded
	-- {
	--	 "NvChad/nvim-colorizer.lua",
	--	 enabled = false
	-- },

	-- All NvChad plugins are lazy-loaded by default
	-- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
	-- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
	-- {
	--	 "mg979/vim-visual-multi",
	--	 lazy = false,
	-- }
}
return plugins
