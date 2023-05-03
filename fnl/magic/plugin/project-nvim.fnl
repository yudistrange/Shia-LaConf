(module magic.plugin.project
  {autoload {nvim aniseed.nvim}})

(let [(ok? project-nvim) (pcall require :project-nvim)]
  (when ok?
    (project-nvim.setup
      {:manual_mode false
       :detection_methods [ "lsp" "pattern" ]
       :patterns [ ".git" "_darcs" ".hg" ".bzr" ".svn" "Makefile" "package.json" ]
       :ignore_lsp {}
       :exclude_dirs {}
       :show_hidden false
       :silent_chdir true
       :scope_chdir "global"
       :datapath (nvim.fn.stdpath "data")})))
