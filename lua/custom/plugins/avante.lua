return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false,
	build = "make",
	opts = {
		provider = "claude",
		providers = {
			claude = {
				endpoint = "https://api.anthropic.com",
				model = "claude-sonnet-4-20250514",
				timeout = 30000, -- Timeout in milliseconds
				extra_request_body = {
					temperature = 0.75,
					max_tokens = 20480,
				},
			},
		},
		behaviour = {
			auto_apply_diff_after_generation = false,
			use_cwd_as_project_root = true,
		},
	},
}
