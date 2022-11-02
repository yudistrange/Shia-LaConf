(module magic.plugin.telescope
  {autoload {nvim aniseed.nvim
             util magic.util}})

(let [(ok? nvim-cursorline) (pcall #(require :nvim-cursorline))]
  (when ok?
    (nvim-cursorline.setup 
     {:cursorline { :enable  true
                    :timeout  1000
                    :number  false }
      :cursorword { :enable  true
                    :min_length 3
                    :hl  { :underline  true }}})))
