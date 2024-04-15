(module spellwork.plugin.config.llm
  {autoload {nvim aniseed.nvim}})

(let [(ok? llm) (pcall #(require "llm"))]
  (when ok?
    (llm.setup {
      :accept_keymap :<Tab>
      :backend :huggingface
      :context_window 8192
      :debounce_ms 150
      :dismiss_keymap :<S-Tab>
      :enable_suggestions_on_files "*"
      :enable_suggestions_on_startup true
      :lsp {
        :bin_path nil
        :host nil
        :port nil
        :version :0.5.2
      }
      :model :bigcode/starcoder
      :request_body {
        :parameters {
          :max_new_tokens 60
          :temperature 0.2
          :top_p 0.95
        }
      }
      :tls_skip_verify_insecure false
      :tokenizer nil
      :tokens_to_clear [:<|endoftext|>]
    })))
