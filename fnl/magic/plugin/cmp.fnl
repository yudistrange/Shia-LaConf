(module dotfiles.plugin.cmp
  {autoload {nvim aniseed.nvim}})

(set nvim.o.completeopt "menuone,noselect")

(let [(ok? cmp) (pcall require :cmp)]
  (when ok?
    (cmp.setup
      {:sources [{:name "conjure"}
                 {:name "nvim_lsp"}
                 {:name "buffer"}
                 ; {:name "path"}
                 ; {:name "cmdline"}
                 ]
       :mapping (cmp.mapping.preset.insert
                  {"<C-b>" (cmp.mapping.scroll_docs -4)
                   "<C-f>" (cmp.mapping.scroll_docs 4)
                   "<C-e>" (cmp.mapping.abort)
                   "<CR>"  (cmp.mapping.confirm {:select true})
                   "<Tab>" (cmp.mapping (fn [fallback]
                                          (if (cmp.visible)
                                            (cmp.select_next_item)
                                            (fallback))))
                   "<S-Tab>" (cmp.mapping (fn [fallback]
                                          (if (cmp.visible)
                                            (cmp.select_prev_item)
                                            (fallback))))})})))
