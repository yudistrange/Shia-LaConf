(module spellwork.plugin.config.which-key
  {autoload {a aniseed.core}})

(def- keymaps {
  :<leader> {
    :f {
      :name "+file"
      :f [ "<cmd>Telescope find_files<cr>" "Find File" ]
      :r [ "<cmd>Telescope oldfiles<cr>" "Open Recent File" ]
      :n [ "<cmd>enew<cr>" "New File" ]
      :s [ "<cmd>w<cr>" "Save" ]
      :q [ "<cmd>w<cr><cmd>bd<cr>" "Save & Close File" ]
    }
    :w {
      :name "+window"
      :h [ "<cmd>sp<cr>" "Horizontal Split" ]
      :v [ "<cmd>vsp<cr>" "Vertical Split" ]}
    :q [ "<cmd>q!<cr>" "Quit without saving" ]
    :n [ "<cmd>NvimTreeToggle<cr>" "NvimTree"]
  }
})

(let [(ok? which-key) (pcall #(require "which-key"))]
  (when ok?
    (set vim.o.timeout true)
    (set vim.o.timeoutlen 200)
    (which-key.setup {})
    (which-key.register keymaps)))

(defn register-cmd [key command desc opts]
  (let [(ok? wk) (pcall #(require "which-key"))
        cmd (.. "<cmd>" command "<cr>")]
    (when ok?
      (if opts
        (wk.register {key [cmd desc]} opts)
        (wk.register {key [cmd desc]})))))

(defn register-tag [key desc]
  (let [(ok? wk) (pcall #(require "which-key"))]
    (when ok?
      (wk.register {key {:name desc}}))))
