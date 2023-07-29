(module spellwork.init
	{autoload {plugin spellwork.plugin}
         require  {config spellwork.config
                   keybindings spellwork.keybindings}})

;; `autoload` doesn't evaluate the required module eagerly.
;; Thus we need wrapper functions that can be called to eagerly load the forms.
;; Or we can `require` the modules that need to be evaluated eagerly.
(plugin.load)
