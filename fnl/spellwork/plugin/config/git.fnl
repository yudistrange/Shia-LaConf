(module spellwork.plugin.config.gitsigns
  {autoload {wk-util spellwork.plugin.config.which-key}})

(defn- git-keybindings [gitsign]
  [(wk-util.register-tag "<leader>g" "+git")
   (wk-util.register-cmd "<leader>gg" "0G" "Git Status")
   (wk-util.register-cmd "<leader>gl" "G log" "Git Log")
   (wk-util.register-cmd "<leader>gR" "G rebase --interactive" "Git Rebase")
   (wk-util.register-cmd "<leader>gs" "gs.stage_hunk" "Stage hunk")
   (wk-util.register-cmd "<leader>gr" "gs.reset_hunk" "Reset hunk")

   (wk-util.register-fn "<leader>gs" (lambda [] (print "crap") (gitsign.stage_hunk [(vim.fn.line ".") (vim.fn.line "v")])) "Stage hunk" {:mode "v"})
   (wk-util.register-fn "<leader>gr" (lambda [] (gitsign.reset_hunk [(vim.fn.line ".") (vim.fn.line "v")])) "Reset hunk" {:mode "v"}) ])

(let [(ok? gitsigns) (pcall #(require "gitsigns"))]
  (when ok?
    (gitsigns.setup {})
    (git-keybindings gitsigns)))
