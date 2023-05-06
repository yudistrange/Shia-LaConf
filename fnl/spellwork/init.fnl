(module spellwork.init
	{autoload {plugin       spellwork.plugin
                   keybindings  spellwork.keybindings}
         require  {config       spellwork.config}})

;; `autoload` doesn't evaluate the required module eagerly.
;; Thus we need wrapper functions that can be called to eagerly load the forms. Or we can require these.
(plugin.load)
