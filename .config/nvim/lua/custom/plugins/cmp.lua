local cmp = require "cmp"

return {
	cmp.setup {
		mapping = {
			-- close lsp completion (c-x easier than c-e)
			["<C-x>"] = cmp.mapping.close(),
		},
		snippet = {},
	},
}
