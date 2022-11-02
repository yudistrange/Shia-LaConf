(module magic.plugin.treesitter
  {autoload {util magic.util
             nvim aniseed.nvim}})

(let [(ok? ts) (pcall require :nvim-treesitter.configs)]
  (when ok?
    (ts.setup 
      {:ensure_installed ["lua" "rust" "clojure"]
       :sync_install false
       :auto_install true
       :ignore_install ["javascript"]
       :highlight {:additional_vim_regex_highlighting false
                   :enable true}})))
