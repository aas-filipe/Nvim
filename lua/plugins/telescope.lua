return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>ff", function() require("telescope.builtin").find_files() end, desc="Find: Files" },
			{ "<leader>ft", function() require("telescope.builtin").treesitter() end, desc="Treesitter" },
			{ "<leader>fg", function() require("telescope.builtin").live_grep() end},
			{ "<leader>fh", function() require("telescope.builtin").buffers() end},
		},
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup {
				defaults = {
					-- cut --
				},
			}
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end
	}
}
