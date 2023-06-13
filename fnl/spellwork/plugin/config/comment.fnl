(module spellwork.plugin.config.comment
  {autoload {a aniseed.core}})

(let [(ok? cmt) (pcall #(require "Comment"))]
  (when ok?
    (cmt.setup {})))
