(local packer (require :packer))

(packer.startup
  (fn [use]
    (use "wbthomason/packer.nvim")
    (use "rktjmp/hotpot.nvim")

    ;; TreeSitter for syntax highlighting
    (use "nvim-treesitter/nvim-treesitter")))
