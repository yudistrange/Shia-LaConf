(module spellwork.plugin
  {autoload {p spellwork.plugin.utils}})

(defn load []
  (p.use
    "wbthomason/packer.nvim" {}
    "Olical/aniseed" {}

    ;; Lispy things setup
    "Olical/conjure" {}))
