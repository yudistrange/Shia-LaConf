return {
	"debugloop/telescope-undo.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	keys = {
		{ "<leader>u", "<cmd>Telescope undo<cr>", desc = "[U]ndo History" },
	},
	config = function()
		require("telescope").load_extension("undo")
	end,
}
