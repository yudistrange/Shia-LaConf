(module magic.plugin.telescope
  {autoload {nvim aniseed.nvim
             util magic.util}})

(let [(ok? nvim-tree) (pcall #(require :nvim-tree))]
  (when ok?
    (nvim-tree.setup
      {:sync_root_with_cwd true
       :sort_by "case_sensitive"
       :respect_buf_cwd true
       :update_focused_file {:enable true
                             :update_root true}})
    (util.lnnoremap :nn "NvimTreeToggle")))
