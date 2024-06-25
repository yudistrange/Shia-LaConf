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

;; Install rescript
(let [(ok? parser-config) (pcall #(require "nvim-treesitter.parsers"))] 
  (when ok?
   (let [configs ((. parser-config :get_parser_configs))]
     (set configs.rescript
      {:install_info
       {:branch :main
        :files [:src/parser.c :src/scanner.c]
        :generate_requires_npm false
        :requires_generate_from_grammar true
        :url "https://github.com/rescript-lang/tree-sitter-rescript"
        :use_makefile true}}))))
