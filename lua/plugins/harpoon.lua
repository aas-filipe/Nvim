return {
    "ThePrimeagen/harpoon",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
     
    keys = {
	{ "<leader>mf", function() require("harpoon.mark").add_file() end},
	{ "<leader>w", function() require("harpoon.ui").toggle_quick_menu() end},
	{ "<leader>h", function() require("harpoon.ui").nav_next() end},
	{ "<leader>l", function() require("harpoon.ui").nav_prev() end},



    }
}
