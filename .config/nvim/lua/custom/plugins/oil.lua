return {
	{
		"stevearc/oil.nvim",
		opts = {},
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup {
				view_options = {
					show_hidden = true,
				},
			}
		end,
	},
}
