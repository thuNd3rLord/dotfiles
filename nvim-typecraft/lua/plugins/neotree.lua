return {
			"nvim-neo-tree/neo-tree.nvim",
		  branch = "v3.x",
			dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false, 
		opts = {},

		config = function()
			vim.keymap.set("n", "<C-e>", ":Neotree toggle position=left<CR>", {})
		end
	}

