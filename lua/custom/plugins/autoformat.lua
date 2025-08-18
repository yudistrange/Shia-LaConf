return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },

	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},

	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
		},

		default_format_opts = {
			lsp_format = "fallback",
		},

		formatters_by_ft = {
			-- lua = { "stylua" },
			clojure = { "cljfmt" },
		},
	},

	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
