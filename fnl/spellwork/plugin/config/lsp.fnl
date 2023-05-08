(module spellwork.configs.plugins.lsp)

(let [(mason-ok? mason)         (pcall #(require "mason"))
      (mason-lsp-ok? mason-lsp) (pcall #(require "mason-lspconfig"))
      (lsp-ok? lspconfig)       (pcall #(require "lspconfig"))]
  (when (and mason-ok? mason-lsp-ok? lsp-ok?)
    (mason.setup {})
    (mason-lsp.setup {})
    (mason-lsp.setup_handlers 
      {1 (fn [server-name]
         ((. (. lspconfig server-name) :setup) {}))})	
    ))
