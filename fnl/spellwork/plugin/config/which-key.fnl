(module spellwork.plugin.config.which-key
  {autoload {a aniseed.core}})

(def- keymaps {
  :<leader> {
    :f {
      :name "+Telescope"
      :r [ "<cmd>Telescope oldfiles<cr>" "Open Recent File" ]
      :g [ "<cmd>Telescope live_grep<cr>" "Open Grep" ]
      :b [ "<cmd>Telescope buffers<cr>" "Open Buffer" ]
    }
    :w [ "<cmd>wincmd w<cr>" "Window switch"]
    :s {
      :name "+split"
      :- [ "<cmd>sp<cr>" "Horizontal Split" ]
      :| [ "<cmd>vsp<cr>" "Vertical Split" ]
    }
    :qq [ "<cmd>q!<cr>" "Quit without saving" ]
    :e [ "<cmd>NvimTreeToggle<cr>" "NvimTree"]
    :<leader> ["<cmd>Telescope find_files<cr>" "Find File" ]
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
        cmd-str  (.. "<cmd>" command "<cr>")]
    (when ok?
      (if opts
        (wk.register {key [cmd-str desc]} opts)
        (wk.register {key [cmd-str desc]})))))

(defn register-fn [key f desc opts]
  (let [(ok? wk) (pcall #(require "which-key"))]
    (when ok?
      (if opts
        (wk.register {key {f desc}} opts)
        (wk.register {key {f desc}})))))

(defn register-tag [key desc]
  (let [(ok? wk) (pcall #(require "which-key"))]
    (when ok?
      (wk.register {key {:name desc}}))))
