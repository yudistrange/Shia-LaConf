return {
	{ -- you can easily change to a different colorscheme.
		-- change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- if you want to see what colorschemes are already installed, you can use `:telescope colorscheme`.
		"folke/tokyonight.nvim",
	},
	{ "rebelot/kanagawa.nvim" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "olimorris/onedarkpro.nvim" },
	{ "marko-cerovac/material.nvim" },
	{ "Mofiqul/dracula.nvim" },
	{ "sainnhe/edge" },
	{ "craftzdog/solarized-osaka.nvim" },
	{ "shaunsingh/nord.nvim" },
	{
		"uloco/bluloco.nvim",
		dependencies = { "rktjmp/lush.nvim" },
	},
	{ "mhartington/oceanic-next" },
	{ "savq/melange-nvim" },
	{ "tiagovla/tokyodark.nvim" },
	{ "bluz71/vim-nightfly-colors", name = "nightfly" },
	{ "AlexvZyl/nordic.nvim" },
	{
		"tanvirtin/monokai.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins.
		init = function()
			vim.cmd.colorscheme("monokai_pro")

			-- you can configure highlights by doing something like:
			vim.cmd.hi("comment gui=none")
		end,
	},
}
