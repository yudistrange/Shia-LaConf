(module spellwork.plugin.config.grapple
  {autoload {a aniseed.core
             wk-util spellwork.plugin.config.which-key}})

(defn- grapple-keymaps []
  [(wk-util.register-cmd "<leader>pv" "GrapplePopup tags" "Show Grapple Tags")
   (wk-util.register-cmd "<leader>pp" "GrappleToggle" "Toggle Grapple Tag")
   (wk-util.register-tag "<leader>p" "+grapple")])

(let [(ok? grapple) (pcall #(require "grapple"))]
  (when ok?
    (grapple.setup {:scope "git"})
    (grapple-keymaps)))
