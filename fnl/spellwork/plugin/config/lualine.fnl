(module spellwork.plugin.config.lualine)

(let [(ok? lualine) (pcall #(require "lualine"))]
  (when ok?
    (lualine.setup 
      {:options {:theme "nightfly"
                 :disabled_filetypes ["NvimTree"]}})))
