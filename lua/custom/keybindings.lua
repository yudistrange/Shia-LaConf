vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape to Normal Mode" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save" })
vim.keymap.set({ "n" }, "<leader>bs", "<Esc><cmd>w<CR>", { desc = "[S]ave" })
vim.keymap.set({ "n" }, "<leader>bq", "<Esc><cmd>q<CR>", { desc = "[Q]uit" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>bd", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
