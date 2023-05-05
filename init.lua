-- ~/.config/nvim/init.lua

-- This init.lua file will clone hotpot into your plugins directory if
-- it is missing. Do not forget to also add hotpot to your plugin manager
-- or it may uninstall hotpot!

-- Consult your plugin-manager documentation for where it installs plugins.
-- packer.nvim
-- local plugin_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/hotpot.nvim'
-- paq.nvim
local function install_path(plugin_name) 
	return vim.fn.stdpath('data') .. '/site/pack/packer/start/' .. plugin_name
end

local function bootstrap(plugin_name, plugin_repo)
	local plugin_path = install_path(plugin_name)
	if vim.fn.empty(vim.fn.glob(plugin_path)) > 0 then
  		print("Could not find " .. plugin_name .. ", cloning new copy to: " .. plugin_path)
  		vim.fn.system({'git', 'clone', plugin_repo, plugin_path})
		vim.cmd("helptags " .. plugin_path .. "/doc")
	end
end

bootstrap("hotpot.nvim", "https://github.com/rktjmp/hotpot.nvim.git")
bootstrap("packer.nvim", "https://github.com/wbthomason/packer.nvim.git")

-- Enable fnl/ support
require("hotpot")

-- Now you can load fennel code, so you could put the rest of your
-- config in a separate `~/.config/nvim/fnl/my_config.fnl` or
-- `~/.config/nvim/fnl/plugins.fnl`, etc.
require("initialize")
