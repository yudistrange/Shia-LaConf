(module spellwork.plugin.config.lsp
  {autoload {a aniseed.core
             nvim aniseed.nvim
             wk-util spellwork.plugin.config.which-key}})

(defn lsp-keymaps [bufnr]
  (let [opts    {:noremap true :silent true}
        bufopts {:noremap true :silent true :buffer bufnr}]
    [(wk-util.register-cmd "gd" "lua vim.lsp.buf.definition()" "Jump to Definition" bufopts)
     (wk-util.register-cmd "gi" "lua vim.lsp.buf.implementation()" "Jump to Implementation" bufopts)
     (wk-util.register-cmd "gr" "lua vim.lsp.buf.references()" "Jump to References" bufopts)
     (wk-util.register-cmd "gD" "lua vim.lsp.buf.declaration()" "Jump to Declaration" bufopts)
     (wk-util.register-cmd "gt" "lua vim.lsp.buf.type_definition()" "Type Definition" bufopts)
     (wk-util.register-cmd "<leader>lk" "lua vim.lsp.buf.signature_help()" "Signature" bufopts)
     (wk-util.register-cmd "<leader>lr" "lua vim.lsp.buf.rename()" "Rename" bufopts)
     (wk-util.register-cmd "<leader>la" "lua vim.lsp.buf.code_action()" "Code Action" bufopts)
     (wk-util.register-cmd "<leader>lf" "lua vim.lsp.buf.format()" "Format" bufopts)
     (wk-util.register-cmd "<leader>le" "lua vim.diagnostic.open_float()" "Open Diagnostic"  opts)
     (wk-util.register-cmd "<leader>lD" "lua vim.diagnostic.goto_prev()" "Goto prev Diagnostic" opts)
     (wk-util.register-cmd "<leader>ld" "lua vim.diagnostic.goto_next()" "Goto next Diagnostic" opts)
     (wk-util.register-tag "<leader>l" "+lsp")]))

(defn lsp-handlers []
  {1 (fn [server-name]
       (let [(ok? lspconfig) (pcall #(require "lspconfig"))]
         ((. (. lspconfig server-name) :setup)
          {:on_attach (fn [bufnr] (lsp-keymaps bufnr))})))})

(let [(mason-ok? mason)         (pcall #(require "mason"))
      (mason-lsp-ok? mason-lsp) (pcall #(require "mason-lspconfig"))]
  (when (and mason-ok? mason-lsp-ok?)
    (mason.setup {})
    (mason-lsp.setup { :handlers (lsp-handlers) })))
