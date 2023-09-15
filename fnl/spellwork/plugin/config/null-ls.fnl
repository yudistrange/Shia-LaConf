(module spellwork.plugin.config.null-ls)

(let [(ok? null-ls) (pcall #(require "null-ls"))]
  (when ok?
    (null-ls.setup
      {:sources
       [;; Code Actions
        null-ls.builtins.code_actions.eslint
        null-ls.builtins.code_actions.gitsigns
        null-ls.builtins.code_actions.proselint
        null-ls.builtins.code_actions.refactoring

        ;; Completions
        null-ls.builtins.completion.luasnip
        null-ls.builtins.completion.spell

        ;; Diagnostics
        null-ls.builtins.diagnostics.clj_kondo
        null-ls.builtins.diagnostics.credo
        null-ls.builtins.diagnostics.eslint
        ; null-ls.builtins.diagnostics.misspell
        null-ls.builtins.diagnostics.proselint

        ;; Formatters
        null-ls.builtins.formatting.brittany
        null-ls.builtins.formatting.cljstyle
        null-ls.builtins.formatting.eslint
        null-ls.builtins.formatting.eslint
        null-ls.builtins.formatting.ocamlformat
        null-ls.builtins.formatting.rustfmt ]})))
