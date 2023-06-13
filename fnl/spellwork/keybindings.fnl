(module spellwork.keybindings
  {autoload {nvim aniseed.nvim}})

;; Insert mode: fd as Escape short cut
(nvim.set_keymap :i :jk "<ESC>" {:noremap true})
