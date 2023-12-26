(module spellwork.plugin.config.rust
  {autoload {a aniseed.core
             lsp spellwork.plugin.config.lsp}})

(let [(ok? rust) (pcall #(require "rust-tools"))
      tool-opts {:runnables { :use_telescope true }
                 :inlay_hints { :auto true :show_parameter_hints false :parameter_hints_prefix "" :other_hints_prefix "" }}
      server-opts {:settings {"rust-analyzer" {:checkOnSave {:command "clippy"}}}
                   :on_attach (fn [client bufnr]
                                (lsp.lsp-keymaps bufnr))}]
  (when ok?
    (rust.setup {:tools tool-opts
                 :server server-opts})))
