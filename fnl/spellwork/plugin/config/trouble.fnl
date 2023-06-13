(module spellwork.plugin.config.trouble
  {autoload {a aniseed.core
             nvim aniseed.nvim
             wk-util spellwork.plugin.config.which-key}})

(defn- trouble-keymaps []
  [(wk-util.register-cmd "<leader>xx" "TroubleToggle" "Show/Hide Trouble")
   (wk-util.register-cmd "<leader>xw" "TroubleToggle workspace_diagnostics" "Workspace Diagnostics")
   (wk-util.register-cmd "<leader>xd" "TroubleToggle document_diagnostics" "Document Diagnostics")
   (wk-util.register-cmd "<leader>xq" "TroubleToggle quickfix" "Quickfix")
   (wk-util.register-cmd "<leader>xl" "TroubleToggle loclist" "Loclist")
   (wk-util.register-cmd "gR" "TroubleToggle lsp_references" "LSP References")
   (wk-util.register-tag "<leader>x" "Trouble")])

(let [(ok? trouble) (pcall #(require "trouble"))]
  (when ok?
    (trouble.setup {})
    (trouble-keymaps)))
