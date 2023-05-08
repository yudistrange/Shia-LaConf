(module spellwork.plugin.config.completion)

(let [(ok? cmp) (pcall #(require "cmp"))]
  (when ok?
    (cmp.setup
      {:mapping (cmp.mapping.preset.insert 
                  {"<C-b>"      (cmp.mapping.scroll_docs -4)
                   "<C-f>"      (cmp.mapping.scroll_docs 4)
                   "<C-n>"      (cmp.mapping.select_next_item { :behavior cmp.SelectBehavior.Insert })
                   "<C-p>"      (cmp.mapping.select_prev_item { :behavior cmp.SelectBehavior.Insert })
                   "<Tab>"      (cmp.mapping.select_next_item { :behavior cmp.SelectBehavior.Insert })
                   "<S-Tab>"    (cmp.mapping.select_prev_item { :behavior cmp.SelectBehavior.Insert })
                   "<C-Space>"  (cmp.mapping.complete)
                   "<C-e>"      (cmp.mapping.abort)
                   "<CR>"       (cmp.mapping.confirm { :select true })})
       :sources (cmp.config.sources 
                  [{:name "nvim_lsp"}
                   {:name "bufffer"}
                   {:name "path"}
                   {:name "luasnip"}])})))
