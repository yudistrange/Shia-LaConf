-- local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
-- 	group = lint_augroup,
-- 	callback = function()
-- 		require("lint").try_lint()
-- 	end,
-- })

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({})
		vim.keymap.set({ "n", "i", "v", "t" }, "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Open terminal" })

		local terminal_autogroup = vim.api.nvim_create_augroup("terminalOpenGroup", { clear = true })
		vim.api.nvim_create_autocmd({ "TermOpen" }, {
			group = terminal_autogroup,
			callback = function()
				local opts = { buffer = 0 }
				vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
				vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
				vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
				vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
				print("Entered the terminal")
			end,
		})
	end,
}
