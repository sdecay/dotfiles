return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require("lualine").setup {
				options = {
					theme = "palenight",
				},
				sections = {
					lualine_c = { "filename" },
				},
			}
		end,
	},
}
