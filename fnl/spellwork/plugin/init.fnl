(module spellwork.plugin
  {autoload {p spellwork.plugin.utils}})

(defn load []
  (p.use
    ;; Manage Packer and Aniseed
    "wbthomason/packer.nvim" {}
    "Olical/aniseed" {}

    ;; Lispy things setup
    "Olical/conjure" {}
    "tpope/vim-sexp-mappings-for-regular-people" {}
    "guns/vim-sexp" {:mod :lisp}
    "tpope/vim-repeat" {}
    "tpope/vim-surround" {}
    ))
