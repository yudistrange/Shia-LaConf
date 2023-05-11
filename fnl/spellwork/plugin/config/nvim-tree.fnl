(module spellwork.plugin.config.nvim-tree)

(let [(ok? nvim-tree) (pcall #(require "nvim-tree"))]
  (when ok?
    (nvim-tree.setup
      {:sort_by   "case_sensitive"
       :view      {:width       30}
       :renderer  {:group_empty true}
       :filters   {:dotfiles    true}
       :sync_root_with_cwd true
       :respect_buf_cwd true
       :update_focused_file {:enable  true
                             :update_root  true}})))
