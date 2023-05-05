(module spellwork.plugins
	{autoload {packer packer}})

(defn load []
  (packer.startup
    (fn [use]
      (use "wbthomason/packer.nvim")
      (use "Olical/aniseed")

      ;; Lispy things setup
      (use "Olical/conjure"))))
