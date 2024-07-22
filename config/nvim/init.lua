-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	-- ==================================================== --

	vim.o.guifont = "JetbrainsMono Nerd Font Propo:h11.25:b"

	-- Determines the time it takes for a window to complete animation from one position to another position in seconds, such as :split
	vim.g.neovide_position_animation_length = 1

	-- controls line spacing
	vim.opt.linespace = 0

	-- controls text gamma and contrast
	vim.g.neovide_text_gamma = 0.6
	vim.g.neovide_text_contrast = 1.0

	-- controls padding
	vim.g.neovide_padding_top = 1
	vim.g.neovide_padding_bottom = 1
	vim.g.neovide_padding_right = 1
	vim.g.neovide_padding_left = 1

	-- controls window transparancy
	vim.g.neovide_transparency = 1

	-- sets how long the scroll animation takes to complete, measured in seconds
	vim.g.neovide_scroll_animation_length = 0.825

	-- when scrolling more than one screen at a time, only this many lines at the end of the scroll action will be animated. Set it to 0 to snap to the final position without any animation, or to something big like 9999 to always scroll the whole screen
	vim.g.neovide_scroll_animation_far_lines = 100

	-- Dont draw boarders around opaque windows only
	vim.g.neovide_show_border = false

	-- will control if the mouse hides when typing
	vim.g.neovide_hide_mouse_when_typing = true

	-- controls neovide refresh rate
	vim.g.neovide_refresh_rate = 240
	-- idle
	vim.g.neovide_refresh_rate_idle = 240
	-- idle currently is disabled
	vim.g.neovide_no_idle = true

	-- profiler
	vim.g.neovide_profiler = false

	-- confirm quit
	vim.g.neovide_confirm_quit = true

	-- cursor animation length
	vim.g.neovide_cursor_animation_length = 0.18

	-- antialisasing
	vim.g.neovide_cursor_antialiasing = true

	-- cursor blink animation
	vim.g.neovide_cursor_smooth_blink = true

	-- cursor particle animation type
	vim.g.neovide_cursor_vfx_mode = "railgun"
	-- sets the transparency of the generated particles.
	vim.g.neovide_cursor_vfx_opacity = 1000.0
	-- sets the amount of time the generated particles should survive.
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.5
	-- sets the # of generated particles
	vim.g.neovide_cursor_vfx_particle_density = 15.0
	-- sets the speed of particle movement
	vim.g.neovide_cursor_vfx_particle_speed = 15.0

	-- zoom
	vim.g.neovide_scale_factor = 0.96
end
