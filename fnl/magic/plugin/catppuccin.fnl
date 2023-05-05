(module magic.plugin.catppuccin
  {autoload {nvim aniseed.nvim}})

;; Comment to check style
(let [(ok? catppuccin) (pcall #(require :catppuccin))]
  (when ok?
    (catppuccin.setup
      {:flavour "frappe"
       :background {:light  "latte"
                    :dark   "mocha"}
       :styles {:comments ["italic"]
                :conditionals ["italic"]}})
    (nvim.ex.colorscheme :catppuccin)))
