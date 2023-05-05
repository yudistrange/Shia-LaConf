(local packer (require :packer))

(packer.startup
  (fn [use]
    (use "wbthomason/packer.nvim")
    (use "Olical/aniseed")

    ;; TreeSitter for syntax highlighting
    (use "nvim-treesitter/nvim-treesitter")))
