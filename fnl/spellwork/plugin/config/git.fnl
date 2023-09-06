(module spellwork.plugin.config.gitsigns
  {autoload {wk-util spellwork.plugin.config.which-key}})

(defn- fugitive-keybindings []
  [ (wk-util.register-tag "<leader>g" "+git")
    (wk-util.register-cmd "<leader>gg" "0G" "Git Status")
    (wk-util.register-cmd "<leader>gl" "G log" "Git Log")
    (wk-util.register-cmd "<leader>gR" "G rebase --interactive" "Git Rebase") ])

(let [(ok? gitsigns) (pcall #(require "gitsigns"))]
  (when ok?
    (fugitive-keybindings)
    (gitsigns.setup
      {:numhl true
       :current_line_blame true
       :on_attach (fn []
                    [(wk-util.register-cmd "<leader>gs" "Gitsigns stage_hunk" "Stage hunk")
                     (wk-util.register-cmd "<leader>gu" "Gitsigns undo_stage_hunk" "Unstage hunk")
                     (wk-util.register-cmd "<leader>gk" "Gitsigns reset_hunk" "Kill hunk")])})))
