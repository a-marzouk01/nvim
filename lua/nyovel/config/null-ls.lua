local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.clang_format,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.diagnostics.cpplint,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.mypy,
	},
})

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
