return {
	-- add colorscheme
	{
		"cryptomilk/nightcity.nvim",
		config = function()
			require("nightcity").setup({
				plugins = { default = true },
				styles = {
					afterlife = {
						red = "kabuki.red",
						yellow = "kabuki.yellow",
						orange = "kabuki.orange",
					},
				},
				on_highlights = function(groups)
					groups["Normal"] = { bg = "#020E19" }
					groups["NormalNC"] = { bg = "#000C15" } -- Normal Non-Current
					groups["NvimTreeNormal"] = { bg = "#000C15" } -- NerdTree
					groups["ToggleTerm"] = { bg = "#000C15" } -- ToggleTerm
					groups["TelescopeNormal"] = { bg = "#000C15" } -- Telescope
					-- Add more highlight groups as needed for other plugins
				end,
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nightcity-afterlife",
		},
	},
}
