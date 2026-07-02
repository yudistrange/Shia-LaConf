vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

vim.keymap.set("n", "<C-o>", function()
  local stack = vim.fn.gettagstack()
  if stack.curidx > 1 then
    vim.cmd("pop") -- tagstack pop — the true-stack behavior you want
  else
    vim.cmd("normal! \15") -- \15 = literal Ctrl-O, fall back to jumplist
  end
end, { desc = "Tagstack pop, fallback to jumplist-back" })
