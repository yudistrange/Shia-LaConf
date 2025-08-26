return {
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {},
	},
	{
		"chentoast/marks.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		-- Calls `require('slimline').setup({})`
		"sschleemilch/slimline.nvim",
		opts = {
			opts = {
				style = "bg",
				configs = {
					path = {
						hl = {
							primary = "Define",
						},
					},
					git = {
						hl = {
							primary = "Function",
						},
					},
					diagnostics = {
						hl = {
							primary = "Statement",
						},
					},
					filetype_lsp = {
						hl = {
							primary = "String",
						},
					},
				},
			},
		},
	},
	{
		"nvim-zh/colorful-winsep.nvim",
		config = true,
		event = { "WinLeave" },
	},
	{
		"m00qek/baleia.nvim",
	},
	{
		"j-hui/fidget.nvim",
	},
}
