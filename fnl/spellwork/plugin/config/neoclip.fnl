(module spellwork.plugin.config.neoclip)

(let [(ok? neoclip) (pcall #(require "neoclip"))]
  (when ok?
    (neoclip.setup
      {:keys
       {:telescope
        {:i {:select "<Space>"
             :paste ["<C-p>" "<CR>"]}
         :n {:select "<Space>"
             :paste ["p" "<CR>"]
             :paste_behind ["P"]}}}})))
