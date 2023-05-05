(local packer (require :packer))

(packer.startup
  (fn [use]
    (use "wbthomason/packer.nvim")))
