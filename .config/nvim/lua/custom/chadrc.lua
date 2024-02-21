---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"
--
--[[ vim.api.nvim_set_hl(0, "@comment", { link = "SignColumn" }) ]]

M.ui = {
	theme = "tokyonight",
	theme_toggle = { "tokyonight", "rosepine" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	transparency = true,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
