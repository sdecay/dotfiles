-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local option = vim.opt

-- my oldschool .vimrc in its entirety
option.tabstop = 4
option.softtabstop = 4
option.shiftwidth = 4
option.expandtab = false -- spaces are for monsters
option.hlsearch = false
option.relativenumber = true
option.incsearch = true
-- /oldschool

option.title = true -- useful for windows terminal
option.scrolloff = 8
option.colorcolumn = "80"
-- option.clipboard = "unnamedplus" -- to get stuff into windows
option.foldmethod = "manual"
option.foldcolumn = "1"

vim.wo.wrap = false

option.guicursor = {
	"n-v-c:block-Cursor",
	"i-ci:block-Cursor-blinkwait1000-blinkon150-blinkoff150",
}

require "custom.autos"
