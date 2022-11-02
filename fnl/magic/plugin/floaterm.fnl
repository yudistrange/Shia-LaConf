(module magic.plugin.floaterm
  {autoload {nvim aniseed.nvim}})

(nvim.set_keymap :n "<leader>=" ":FloatermToggle<CR>" { :noremap true })
(nvim.set_keymap :t "<leader>=" "<C-\\><C-n>:FloatermToggle<CR>" { :noremap true })
