return {
	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("tokyonight").setup({
				styles = {
					comments = { italic = false }, -- Disable italics in comments
				},
			})

			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.cmd.colorscheme("tokyonight-night")
		end,
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
		-- config = function()
		-- 	require("everblush").setup({
		-- 		transparent = false, -- Set to true for transparency
		-- 	})
		-- 	vim.cmd.colorscheme("everblush")
		-- end,
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
	{
		"armannikoyan/rusty",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = false,
			italic_comments = true,
			underline_current_line = true,
		},
	},
}
