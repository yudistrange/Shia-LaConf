return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").add({
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>d", group = "[D]ocument" },
			{ "<leader>r", group = "[R]ename" },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>w", group = "[W]orkspace" },
			{ "<leader>t", group = "[T]oggle" },
			{ "<leader>h", group = "Git" },
			{ "<leader>b", group = "[B]uffer Options" },
			{ "<leader>l", group = "[L]SP Options" },
			{ "<leader>?", group = "Editor Config Options" },
		})
		-- visual mode
	end,
}
