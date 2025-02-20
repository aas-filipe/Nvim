return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim"
    },

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({

			sources = {
				--- Lua
				null_ls.builtins.formatting.stylua,
				--- WebDev, HTML, JS, CSS yadayadayada
                require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.prettierd,
				--- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
                --- Java
                null_ls.builtins.diagnostics.checkstyle,
                null_ls.builtins.formatting.google_java_format,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
