return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"ts_ls",
					"superhtml",
					"jdtls",
					"clangd",

				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})

			-- Javascriot and Typescript
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})

			-- HTML 
			lspconfig.superhtml.setup({
				capabilities = capabilities
			})


			-- Java
			lspconfig.jdtls.setup({
				capabilities = capabilities
			})

			-- C
			lspconfig.clangd.setup({
				capabilities = capabilities
			})




			local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
          "stylua", -- Used to format Lua code
          "prettierd", -- Used to format javascript and typescript code
					"isort",
					"prettier",
        })

			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

		end
	}
}
