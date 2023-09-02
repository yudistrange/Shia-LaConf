(module spellwork.keybindings
  {autoload {nvim aniseed.nvim}})

;; Insert mode: fd as Escape short cut
(nvim.set_keymap :i :jk "<ESC>" {:noremap true})
(nvim.set_keymap :i :jj "<ESC>" {:noremap true})
(nvim.set_keymap :n :<C-s> "<CMD>w<CR>" {:noremap true})
(nvim.set_keymap :i :<C-s> "<ESC><CMD>w<CR>" {:noremap true})

;; Movement related commands
(nvim.set_keymap :i :<C-j> "<CMD>:wincmd j<CR>" {:noremap true})
(nvim.set_keymap :i :<C-k> "<CMD>:wincmd k<CR>" {:noremap true})
(nvim.set_keymap :i :<C-l> "<CMD>:wincmd l<CR>" {:noremap true})
(nvim.set_keymap :i :<C-h> "<CMD>:wincmd h<CR>" {:noremap true})
(nvim.set_keymap :n :<C-j> "<CMD>:wincmd j<CR>" {:noremap true})
(nvim.set_keymap :n :<C-k> "<CMD>:wincmd k<CR>" {:noremap true})
(nvim.set_keymap :n :<C-l> "<CMD>:wincmd l<CR>" {:noremap true})
(nvim.set_keymap :n :<C-h> "<CMD>:wincmd h<CR>" {:noremap true})
