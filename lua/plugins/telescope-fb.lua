return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		local fb_actions = require("telescope._extensions.file_browser.actions")
		require("telescope").setup {
			extensions = {
				file_browser = {
					-- disables netrw and use telescope-file-browser in its place
					initial_mode = "normal",
					hijack_netrw = true,
					auto_depth = true,
					mappings = {
						["i"] = {
							-- your custom insert mode mappings
						},
						["n"] = {
							["l"] = fb_actions.change_cwd,
							["h"] = fb_actions.goto_parent_dir,
							["<S-h>"] = fb_actions.toggle_hidden,
						},
					},
				},
			},
		}
		-- To get telescope-file-browser loaded and working with telescope,
		-- you need to call load_extension, somewhere after setup function:
		require("telescope").load_extension "file_browser"
	end,
}
