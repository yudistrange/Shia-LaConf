(module spellwork.plugin.config.telescope)

(let [(ok? telescope) (pcall #(require "telescope"))]
  (when ok?
    (telescope.setup
      {:extensions {:fzf
                    {:fuzzy true
                     :override_generic_sorter true
                     :override_file_sorter true
                     :case_mode "smart_case"}}
       :pickers {:colorscheme
                 {:enable_preview true}}})
    (telescope.load_extension "projects")
    (telescope.load_extension "fzf")))
