(module spellwork.init
	{autoload {plugin       spellwork.plugin
                   config       spellwork.config
                   keybindings  spellwork.keybindings}})

;; `autoload` evaluates the required module. Thus the top level forms are evaluated on autoload
(plugin.load)
