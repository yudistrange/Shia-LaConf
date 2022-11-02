(module magic.plugin.mason)

(let [(mason-ok? mason) (pcall require :mason)
      (mason-lsp-ok? mason-lsp) (pcall require :mason-lspconfig)]
  (when mason-ok?
    (when mason-lsp-ok?
      (mason.setup)
      (mason-lsp.setup 
        { :automatic_installation true })
      (mason-lsp.setup_handlers 
        { 1 (fn [server_name]
              (let [(ok? lsp) (pcall #(require :lspconfig))
                    (ok? lsp-format) (pcall require :lsp-format)]
                (when ok?
                  (let [server (. lsp server_name)]
                    ( server.setup { :on_attach lsp-format.on_attach })))))}))))
