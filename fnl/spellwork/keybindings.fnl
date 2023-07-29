(module spellwork.keybindings
  {autoload {nvim aniseed.nvim}})

;; Insert mode: fd as Escape short cut
(nvim.set_keymap :i :jk "<ESC>" {:noremap true})
(nvim.set_keymap :i :jj "<ESC>" {:noremap true})
(nvim.set_keymap :n :<C-s> "<CMD>w<CR>" {:noremap true})
(nvim.set_keymap :i :<C-s> "<ESC><CMD>w<CR>" {:noremap true})
