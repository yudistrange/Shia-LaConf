return {
	{
		"direnv/direnv.vim",
		config = function()
			-- Automatically load environment variables from .envrc
			-- on vim launch and when current directory is changed
			vim.api.nvim_create_autocmd({ "DirChanged", "VimEnter" }, {
				pattern = "*",
				command = "silent! call direnv#export()",
			})
		end,
	},
}
