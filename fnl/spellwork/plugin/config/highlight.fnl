(module spellwork.plugin.config.highlight
  {autoload {a aniseed.core}})

(let [(ok? ibl) (pcall #(require "ibl"))]
  (when ok?
    (ibl.setup {})))
