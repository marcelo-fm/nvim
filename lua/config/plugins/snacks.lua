local dashboard_config = require("config.plugins.snacks.dashboard")
local picker_config = require("config.plugins.snacks.picker")
return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		dashboard = dashboard_config,
		picker = picker_config,
		explorer = {
			replace_netrw = true, -- Replace netrw with the snacks explorer
		},
	},
}
