-- lua/lazyvim/config/plugins.config.lua
return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				always_show_bufferline = true,
			},
			highlights = {
				-- Change the color of the active tab
				buffer_selected = {
					fg = "#FF3600", -- Set the foreground color of the active tab
					bold = true,
					italic = false,
					underline = false,
				},
				-- Change the color of the inactive tabs
				buffer_visible = {
					bold = false,
					italic = false,
					underline = false,
				},
			},
		},
	},
}
