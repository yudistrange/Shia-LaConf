(module spellwork.keybindings
  {autoload {nvim aniseed.nvim}})

;; Insert mode: fd as Escape short cut
(nvim.set_keymap :i :jk "<ESC>" {:noremap true})
(nvim.set_keymap :i :jj "<ESC>" {:noremap true})

;; Movement related commands
(defn wrapped-navigation [direction reverse]
  (fn []
    (if (= (vim.fn.winnr) (vim.fn.winnr direction))
      (nvim.ex.wincmd 99 reverse)
      (nvim.ex.wincmd direction))))

(vim.keymap.set :n :<C-j> (wrapped-navigation "j" "k"))
(vim.keymap.set :i :<C-j> (wrapped-navigation "j" "k"))

(vim.keymap.set :n :<C-k> (wrapped-navigation "k" "j"))
(vim.keymap.set :i :<C-k> (wrapped-navigation "k" "j"))

(vim.keymap.set :n :<C-l> (wrapped-navigation "l" "h"))
(vim.keymap.set :i :<C-l> (wrapped-navigation "l" "h"))

(vim.keymap.set :n :<C-h> (wrapped-navigation "h" "l"))
(vim.keymap.set :i :<C-h> (wrapped-navigation "h" "l"))

;; Close current buffer without saving
(nvim.set_keymap :n :qq "<CMD>:q<CR>" {:noremap true})
