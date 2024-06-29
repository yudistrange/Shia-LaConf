vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape to Normal Mode" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save" })
vim.keymap.set({ "n", "i", "v" }, "<leader>bs", "<Esc><cmd>w<CR>", { desc = "[S]ave" })
vim.keymap.set({ "n", "i", "v" }, "<leader>bq", "<Esc><cmd>q<CR>", { desc = "[Q]uit" })
