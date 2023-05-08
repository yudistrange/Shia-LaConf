(module spellwork.plugin.config.which-key)

(let [(ok? which-key) (pcall #(require "which-key"))]
  (when ok?
    (which-key.setup {(set vim.o.timeout true)
                      (set vim.o.timeoutlen 300)})))
