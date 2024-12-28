return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	build = "make BUILD_FROM_SOURCE=true", -- This is Optional, only if you want to use tiktoken_core to calculate tokens count
	opts = {
		-- add any opts here
		provider = "openai",
		openai = {
			model = "gpt-4o",
			api_key_name = "OPENAI_API_KEY",
		},
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below is optional, make sure to setup it properly if you have lazy=true
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
