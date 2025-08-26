return {
	{
		"Olical/conjure",
		dependencies = {
			"guns/vim-sexp",
			"tpope/vim-sexp-mappings-for-regular-people",
			"tpope/vim-repeat",
			"kylechui/nvim-surround",
			"HiPhish/rainbow-delimiters.nvim",
			-- "gpanders/nvim-parinfer",
		},
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
