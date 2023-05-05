-- ~/.config/nvim/init.lua

-- Install path for initial plugins
local function install_path(plugin_name) 
	return vim.fn.stdpath('data') .. '/site/pack/packer/start/' .. plugin_name
end

-- Bootstrap plugins outside of fennel
local function bootstrap(plugin_name, plugin_repo)
	local plugin_path = install_path(plugin_name)
	if vim.fn.empty(vim.fn.glob(plugin_path)) > 0 then
  		print("Could not find " .. plugin_name .. ", cloning new copy to: " .. plugin_path)
  		vim.fn.system({'git', 'clone', plugin_repo, plugin_path})
		vim.cmd("helptags " .. plugin_path .. "/doc")
	end
end

-- Install Packer
bootstrap("packer.nvim", "https://github.com/wbthomason/packer.nvim.git")
vim.cmd [[packadd packer.nvim]]

-- Install Aniseed
bootstrap("Olical/aniseed", "https://github.com/Olical/aniseed.git")

-- Set fennel init module
vim.g["aniseed#env"] = {
	module = "spellwork.init"
}
