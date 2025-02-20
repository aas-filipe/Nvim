return {

        "nvim-tree/nvim-tree.lua",
        opts = { on_attach = on_attach_change },
	keys = {
		{ "<C-n>", ":NvimTreeFindFileToggle<CR>", "Toggle File finder"},
		{ "<C-f>", ":NvimTreeFocus<CR>", "Switch to the File finder"},
		{ "<C-c>", ":NvimTreeCollapseKeepBuffers<CR>", "Collapse all folders except current path"},
	},

}
