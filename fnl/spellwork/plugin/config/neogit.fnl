(module spellwork.plugin.config.neogit)

(let [(ok? neogit) (pcall #(require "neogit"))]
  (when ok?
    (neogit.setup {})))
