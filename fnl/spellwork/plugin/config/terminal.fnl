(module spellwork.plugin.config.terminal
  {autoload {a aniseed.core
             nvim aniseed.nvim
             wk-util spellwork.plugin.config.which-key}})

(let [(ok? term) (pcall #(require "toggleterm"))]
  (when ok?
    (term.setup {})
    (wk-util.register-cmd "<leader>t" "ToggleTerm" "Terminal" {:mode "t"})
    (wk-util.register-cmd "<leader>t" "ToggleTerm" "Terminal" {:mode "n"})))
