return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			"ruff", "black",
			"clang-format",
			"shfmt", "shellcheck",
			"stylua", "luacheck",
		},
	},
}
