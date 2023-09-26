(module spellwork.plugin.config.elixir
  {autoload {a aniseed.core}})

(let [(ok? elixir) (pcall #(require "elixir"))]
  (when ok?
    (elixir.setup
      {:nextls
       {:enable false
        :cmd "/home/udit/.local/share/nvim/mason/bin/nextls"
        :port 9000 }
       :credo {:enable false}
       :elixirls
       {:enable true
        :cmd "/home/udit/.local/share/nvim/mason/bin/nextls" }})))
