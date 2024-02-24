local none_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local b = none_ls.builtins

local sources = {

	-- webdev stuff
	b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

	-- Lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,

	-- python stuff
	b.diagnostics.ruff,
	b.diagnostics.mypy,

	-- -- go stuff
	b.formatting.gofumpt,
}

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format { bufnr = bufnr }
end

none_ls.setup {
	debug = false,
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method "textDocument/formatting" then
			vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					lsp_formatting()
				end,
			})
		end
	end,
}
