return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "ruff" },
			c = { "clangtidy" },
			cpp = { "clangtidy" },
			sh = { "shellcheck" },
			lua = { "luacheck" },
		}

		lint.linters.clangtidy.args = {
			"--quiet",
			"--checks=*,-llvmlibc-*,-altera-*,-fuchsia-*,-android-*,-google-objc-*,-abseil-*,-zircon-*,-darwin-*,-linuxkernel-*,-mpi-*,-openmp-*,-boost-*,-hicpp-*",
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
