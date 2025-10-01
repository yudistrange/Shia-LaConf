return {
	{
		"m00qek/baleia.nvim",
		opts = {
			line_starts_at = 3,
		},
		config = function(_, opts)
			vim.g.conjure_baleia = require("baleia").setup(opts)

			vim.api.nvim_create_user_command("BaleiaColorize", function()
				vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
			end, { bang = true })

			vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, { bang = true })
		end,
	},
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
		config = function(_, _)
			require("conjure.main").main()
			require("conjure.mapping")["on-filetype"]()
		end,
		init = function()
			-- print color codes if baleia.nvim is available
			vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0

			-- disable diagnostics in log buffer and colorize it
			vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
				pattern = "conjure-log-*",
				callback = function()
					local buffer = vim.api.nvim_get_current_buf()
					vim.diagnostic.enable(false, { bufnr = buffer })

					if colorize and vim.g.conjure_baleia then
						vim.g.conjure_baleia.automatically(buffer)
					end

					vim.keymap.set({ "n", "v" }, "[c", "<CMD>call search('^; -\\+$', 'bw')<CR>", {
						silent = true,
						buffer = true,
						desc = "Conjure: Jumps to the begining of previous evaluation output.",
					})
					vim.keymap.set({ "n", "v" }, "]c", "<CMD>call search('^; -\\+$', 'w')<CR>", {
						silent = true,
						buffer = true,
						desc = "Conjure: Jumps to the begining of next evaluation output.",
					})
				end,
			})
		end,
	},
	{
		"julienvincent/nvim-paredit",
		config = function()
			require("nvim-paredit").setup()
		end,
	},
}
