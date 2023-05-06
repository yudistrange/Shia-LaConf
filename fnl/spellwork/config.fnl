(module spellwork.config
  {autoload {nvim aniseed.nvim}})

;; Set <space> as mapleader
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")

;; Set , as localleader
(set nvim.g.maplocalleader ",")

;; Enable system clipboard
(nvim.set_option "clipboard" "unnamedplus")
