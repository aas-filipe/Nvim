return {
  "mrcjkb/rustaceanvim",
  version = "^9",
  lazy = false,
  ft = { "rust" },
  server = {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
  },

}
