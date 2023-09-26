(module spellwork.plugin.config.neoclip)

(let [(ok? neoclip) (pcall #(require "neoclip"))]
  (when ok?
    (neoclip.setup {})))
