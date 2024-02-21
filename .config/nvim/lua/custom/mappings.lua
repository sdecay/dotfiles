--ti-@type MappingsTable
local M = {}

M.general = {
	n = {
		-- remapping default ; is hateful
		-- [";"] = { ":", "enter command mode", opts = { nowait = true } },

		["<c-d>"] = { "<c-d>zz", "PgDn" },
		["<c-u>"] = { "<c-u>zz", "PgUp" },
		["-"] = { "<cmd>Oil<CR>", "Open oil.nvim" },

		-- move lines, thanks primeagen
		["K"] = { ":m .-2<CR>==", "Move line up" },
		["J"] = { ":m .+1<CR>==", "Move line down" },

		-- theme toggler without a damn mouse.  had to dig through ~/.local/nvim to
		-- figure this one out
		-- uses themes in ./chadrc.lua
		["<leader>tt"] = {
			function()
				require("base46").toggle_theme()
			end,
			"Toggle theme",
		},

		-- go stuff
		["<leader>si"] = { "<cmd>GoIfErr<CR>", "Go iferr" },
		["<leader>sj"] = { "<cmd>GoTagAdd json<CR>", "Go struct json" },

		-- ez begin and end of line because
		-- i type % instead of ^ too damn often
		["<C-b>"] = { "^", "Beginning of line" },
		["<C-e>"] = { "$", "End of line" },

		-- get rid of nvchad's terminals.  don't want terminals in my editor
		["<leader>s\\"] = {
			"<C-w>v",
			"Veritcal pane",
			opts = { noremap = true },
		},
		["<leader>s]"] = {
			"<C-w>s",
			"Horizontal pane",
			opts = { noremap = true },
		},

		-- telescope stuff, thanks again Primeagen
		["<leader>fg"] = {
			function()
				require("telescope.builtin").git_files()
			end,
			"Git files",
		},
		["<leader>fr"] = {
			function()
				require("telescope.builtin").grep_string {
					search = vim.fn.input "grep# ",
				}
			end,
			"Grep string",
		},

		-- buffer tomfuckery
		["<leader>b"] = { "", "" }, -- nuke NvChad's binding
		["<leader>x"] = { "", "" },
		["<leader>bb"] = { "<cmd>enew<CR>", "New buffer" },
		["<leader>bx"] = { "<cmd>bd<CR>", "Close buffer" },
		["<leader>bn"] = { "<cmd>bnext<CR>", "Next buffer" },
		["<leader>bp"] = { "<cmd>bprev<CR>", "Prev buffer" },

		["gK"] = {
			function()
				vim.lsp.buf.hover()
			end,
			"LSP doc hover",
		},
	},

	v = {
		[">"] = { ">gv", "indent" },

		-- move lines
		["K"] = { ":m `<-2<CR>gv=gv", "Move line up" },
		["J"] = { ":m '>+1<CR>gv=gv", "Move line down" },

		-- begin/end of lines
		["<C-b>"] = { "^", "Beginning of line" },
		["<C-e>"] = { "$", "End of line" },
	},

	i = {
		["<C-b>"] = {
			"<ESC>^i",
			"Beginning of line",
			opts = { noremap = true },
		},
		["<C-e>"] = {
			"<ESC>$a",
			"End of line",
			opts = { noremap = true },
		},
	},
}

return M
