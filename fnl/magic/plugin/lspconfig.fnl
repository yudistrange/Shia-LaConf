(module magic.plugin.lspconfig
  {autoload {util magic.util
             nvim aniseed.nvim}})

(defn- map [from to]
  (util.nnoremap from to))

(let [(ok? lsp) (pcall #(require :lspconfig))]
  (when ok?
    (let [(ok? lsp-format) (pcall #(require :lsp-format.nvim))]
      (when ok?
        (lsp.rust_analyzer.setup
          { :on_attach lsp-format.on_attach })
        (lsp.clojure_lsp.setup
          { :on_attach lsp-format.on_attach })
        (lsp.tsserver.setup
          { :on_attach lsp-format.on_attach })
        (lsp.sumneko_lua.setup
          { :cmd ["lua-language-server"]
            :on_attach lsp-format.on_attach
            :settings {:Lua {:telemetry {:enable false}}}})

        ;; https://www.chrisatmachine.com/Neovim/27-native-lsp/
        (map :gd "lua vim.lsp.buf.definition()")
        (map :gD "lua vim.lsp.buf.declaration()")
        (map :gr "lua vim.lsp.buf.references()")
        (map :gi "lua vim.lsp.buf.implementation()")
        (map :<leader>lK "lua vim.lsp.buf.hover()")
        (map :<leader>l<c-k> "lua vim.lsp.buf.signature_help()")
        (map :<leader>l<c-p> "lua vim.diagnostic.goto_prev()")
        (map :<leader>l<c-n> "lua vim.diagnostic.goto_next()")
        (map :<leader>la "Telescope lsp_code_actions")
        (map :<leader>li "Telescope lsp_implementations")
        (map :<leader>lr "Telescope lsp_references")
        (map :<leader>lS "Telescope lsp_document_symbols")
        (map :<leader>ls "Telescope lsp_workspace_symbols")
        (map :<leader>lr "lua vim.lsp.buf.rename()")
    (map :<leader>lf "lua vim.lsp.buf.formatting()")))))
