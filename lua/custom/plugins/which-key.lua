return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").add({
			{ "<leader>D", group = "[D]iagnostics" },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>f", group = "[F]ind Files" },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>l", group = "[L]SP Options" },
			{ "<leader>u", group = "[U]ser Config" },
			{ "<leader>z", group = "[Z]en Mode" },
			{ "<leader>h", group = "[H]istory" },
		})
		-- visual mode
	end,
}
