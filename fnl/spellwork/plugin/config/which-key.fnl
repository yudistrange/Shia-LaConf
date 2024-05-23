(module spellwork.plugin.config.which-key
  {autoload {a aniseed.core}})

(def- keymaps {
  :<leader> {
    :f {
      :name "+Telescope"
      :f [ "<cmd>Telescope find_files<cr>" "Find File" ]
      :r [ "<cmd>Telescope oldfiles<cr>" "Open Recent File" ]
      :g [ "<cmd>Telescope live_grep<cr>" "Open Grep" ]
      :b [ "<cmd>Telescope buffers<cr>" "Open Buffer" ]
      :c [ "<cmd>Telescope colorscheme<cr>" "ColorSchemes" ]
      :p [ "<cmd>Telescope treesitter<cr>" "Show Outline"]
    }
    :w [ "<cmd>w<cr>" "Save" ]
    :s {
      :name "+split"
      :- [ "<cmd>sp<cr>" "Horizontal Split" ]
      :| [ "<cmd>vsp<cr>" "Vertical Split" ]
    }
    :q [ "<cmd>wq<cr>" "Save & Quit" ]
    :e [ "<cmd>NvimTreeToggle<cr>" "NvimTree"]
    :b {
      :name "+Tabs"
      :N ["<cmd>tabnew<cr>" "New Tab"]
      :q ["<cmd>tabclose<cr>" "Close Current Tab"]
      :n ["<cmd>tabnext<cr>" "Next Tab"]
      :p ["<cmd>tabprevious<cr>" "Previous Tab"]
    }
  }
  :<S-p> ["<cmd>Telescope neoclip<cr>" "Paste Preview"]
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
