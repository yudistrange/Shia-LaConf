(module spellwork.plugin.config.treesitter)

(let [(ok? treesitter) (pcall #(require "nvim-treesitter.configs"))]
  (when ok?
    (treesitter.setup
      {:ensure_installed  [ "c" "lua" "vim" "vimdoc" "query" "fennel" "rust" "clojure" ]
       :sync_install      false
       :auto_install      true
       :ignore_install    []
       :highlight  
       {:enable  true
        :additional_vim_regex_highlighting false}})))
