(module spellwork.plugin.config.telescope)

(let [(ok? telescope) (pcall #(require "telescope"))]
  (when ok?
    (telescope.setup
      {:pickers       {:colorscheme {:enable_preview true}}
       :extensions    {:fzf
                       {:fuzzy true
                        :override_generic_sorter true
                        :override_file_sorter true
                        :case_mode "smart_case"}
                       :media_files
                       {:filetypes ["png" "jpg" "mp4" "webm" "pdf"]
                        :find_cmd "rg"}}})
    (telescope.load_extension "projects")
    (telescope.load_extension "fzf")
    (telescope.load_extension "media_files")))
