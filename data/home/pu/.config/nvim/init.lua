require("packer").startup(function(use)
	use({
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
		config = function()
			vim.cmd("colorschem gruvbox")
			vim.cmd("highlight! Normal guibg=NONE")
		end,
	})
	use({ "sbdchd/neoformat", cmd = "Neoformat" })
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = "markdown" })
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = require("conf.lang").treesitter,
	})
	use({
		"luukvbaal/nnn.nvim",
		config = function()
			require("nnn").setup()
		end,
		cmd = { "NnnExplorer", "NnnPicker" },
	})
	use({
		"ms-jpq/coq_nvim",
		branch = "coq",
	})
	use({ "ms-jpq/coq.artifacts", branch = "artifacts" })
	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").jedi_language_server.setup({})
		end,
	})
end)
