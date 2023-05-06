(module spellwork.configs.plugins.lsp)

(let [(ok? lspconfig) (pcall require lspconfig)]
  (when ok?
    (print "Yay")))
