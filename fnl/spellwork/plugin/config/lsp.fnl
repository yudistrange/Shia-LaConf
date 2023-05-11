(module spellwork.configs.plugins.lsp
  {autoload {a aniseed.core
             nvim aniseed.nvim}})

(defn- massage-keymap [keys command desc opts]
  (let [cmd (.. "<cmd>" command "<cr>")]
    (if opts
      {keys (a.merge {1 cmd 2 desc} opts)}
      {keys [cmd desc]})))

(defn lsp-keymaps [client bufnr]
  (let [opts    {:noremap true :silent true}
        bufopts {:noremap true :silent true :buffer bufnr}]
    [ (massage-keymap "gd" "lua vim.lsp.buf.definition()" "Jump to Definition" bufopts)
      (massage-keymap "gi" "lua vim.lsp.buf.implementation()" "Jump to Implementation" bufopts)
      (massage-keymap "gr" "lua vim.lsp.buf.references()" "Jump to References" bufopts)
      (massage-keymap "gD" "lua vim.lsp.buf.declaration()" "Jump to Declaration" bufopts)
      (massage-keymap "gt" "lua vim.lsp.buf.type_definition()" "Type Definition" bufopts)
      (massage-keymap "<leader>lk" "lua vim.lsp.buf.signature_help()" "Signature" bufopts)
      (massage-keymap "<leader>lr" "lua vim.lsp.buf.rename()" "Rename" bufopts)
      (massage-keymap "<leader>la" "lua vim.lsp.buf.code_action()" "Code Action" bufopts)
      (massage-keymap "<leader>lf" "lua vim.lsp.buf.format()" "Format" bufopts)
      (massage-keymap "<leader>le" "lua vim.diagnostic.open_float()" "Open Diagnostic"  opts)
      (massage-keymap "<leader>lD" "lua vim.diagnostic.goto_prev()" "Goto prev Diagnostic" opts)
      (massage-keymap "<leader>ld" "lua vim.diagnostic.goto_next()" "Goto next Diagnostic" opts)
      {:<leader>l {:name "+lsp"}}]
))

(defn lsp-handlers []
  {1 (fn [server-name]
       (let [(ok? lspconfig) (pcall #(require "lspconfig"))]
         ((. (. lspconfig server-name) :setup)
          {:on_attach (let [(ok? wk) (pcall #(require "which-key"))]
                        (when ok?
                          (wk.setup {})
                          (wk.register (lsp-keymaps))))})))})

(let [(mason-ok? mason)         (pcall #(require "mason"))
      (mason-lsp-ok? mason-lsp) (pcall #(require "mason-lspconfig"))]
  (when (and mason-ok? mason-lsp-ok?)
    (mason.setup {})
    (mason-lsp.setup { :handlers (lsp-handlers) })))
