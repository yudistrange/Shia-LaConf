(module spellwork.keybindings
  {autoload {nvim aniseed.nvim}})

(defn load []
  (nvim.set_keymap :n :<space> :<nop> {:noremap true})
  (set nvim.g.mapleader " ")
  (set nvim.g.maplocalleader ","))

(load)
