(module spellwork.plugin.config.popui)

(let [(ok? popui-select) (pcall #(require "popui.ui-overrider"))]
  (set vim.ui.select popui-select))

(let [(ok? popui-input) (pcall #(require "popui.input-overrider"))]
  (set vim.ui.input popui-input))
