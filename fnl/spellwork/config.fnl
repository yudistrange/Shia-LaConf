(module spellwork.config
  {autoload {a aniseed.core
             nvim aniseed.nvim}})

;; Set <space> as mapleader
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")

;; Set , as localleader
(set nvim.g.maplocalleader ",")

(set nvim.g.vim_better_default_persistent_undo true)
(nvim.ex.runtime_ "plugin/default.vim")

;; Configurations from better-defaults
(nvim.ex.set :number)
(nvim.ex.set :norelativenumber)
(nvim.ex.set :wrap)
(nvim.ex.set :nocursorline)
(nvim.ex.set "wildmode=full")
(nvim.ex.set "wildoptions=pum")
(nvim.ex.set "listchars-=eol:↵")

(set nvim.o.undodir (.. (nvim.fn.stdpath "data") "/undo"))

(nvim.ex.set "clipboard+=unnamedplus")

(set vim.g.loaded_netrw  1)
(set vim.g.loaded_netrwPlugin  1)
(set vim.opt.termguicolors true)

(a.assoc nvim.o :tabstop 4)
(a.assoc nvim.o :shiftwidth 4)
(a.assoc nvim.o :expandtab false)
