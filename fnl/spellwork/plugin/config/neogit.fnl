(module spellwork.plugin.config.neogit
  {autoload {wk-util spellwork.plugin.config.which-key}})

;; TODO: 
;; - Check staging only selected hunks
;; - Confirm popup didn't go away. Noice issue?
(let [(ok? neogit) (pcall #(require "neogit"))]
  (when ok?
    (neogit.setup {})
    (wk-util.register-cmd "<leader>g" "Neogit" "Launch Neogit")))
