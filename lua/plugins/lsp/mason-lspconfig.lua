return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "pyright", "clangd", "bashls", "lua_ls", "gopls" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--background-index",
			},
		})
	end,
}
