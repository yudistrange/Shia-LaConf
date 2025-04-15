return {
	{ -- you can easily change to a different colorscheme.
		-- change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- if you want to see what colorschemes are already installed, you can use `:telescope colorscheme`.
		"folke/tokyonight.nvim",
		opts = {
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		lazy = false,
		priority = 1000,
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
	{ "ray-x/starry.nvim", config = { style = {} } },
	{ "ray-x/aurora" },
	{
		"srt0/everblush.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("everblush").setup({
				transparent = false, -- Set to true for transparency
			})
			vim.cmd.colorscheme("everblush")
		end,
	},
	{
		"tanvirtin/monokai.nvim",
		opt = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				float = "transparent",
			},
		},
	},
}
