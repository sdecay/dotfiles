return {
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("harpoon"):setup()
		end,

		keys = {
			{
				"<leader>bm",
				function()
					require("harpoon"):list():append()
				end,
				desc = "harpoon a file ",
			},
			{
				"<leader>bl",
				function()
					require("harpoon").ui:toggle_quick_menu(
						require("harpoon"):list()
					)
				end,
				desc = "harpoon menu",
			},
			{
				"<A-1>",
				function()
					require("harpoon"):list():select(1)
				end,
				"Harpoon f1",
			},
			{
				"<A-2>",
				function()
					require("harpoon"):list():select(2)
				end,
				"Harpoon f2",
			},
			{
				"<A-3>",
				function()
					require("harpoon"):list():select(3)
				end,
				"Harpoon f3",
			},
			{
				"<A-4>",
				function()
					require("harpoon"):list():select(4)
				end,
				"Harpoon f4",
			},
		},
	},
}
