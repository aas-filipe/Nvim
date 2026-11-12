return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      javascript = {"eslint_d" },
      typescript = {"eslint_d" },
      javascriptreact = {"eslint_d" },
      typescriptreact = {"eslint_d" },
      python = { "ruff_format" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      sh = { "shfmt" },
      lua = { "stylua" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
