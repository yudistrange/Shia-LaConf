(module magic.plugin.telescope
  {autoload {nvim aniseed.nvim
             util magic.util}})

(let [(ok? nvim-tree) (pcall #(require :nvim-tree))]
  (when ok?
    (nvim-tree.setup
      {:sync_root_with_cwd true
       :sort_by "case_sensitive"})
    (util.lnnoremap :nn "NvimTreeToggle")))
