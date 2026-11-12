vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser<CR>", { desc = "Explorer" })
vim.keymap.set({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
