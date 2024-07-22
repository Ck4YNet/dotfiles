-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.cursorline = false

vim.opt.guicursor = {
	"n-v-c:block-Cursor/lCursor",
	"i-ci:ver25-Cursor/lCursor",
	"r-cr:hor20-Cursor/lCursor",
	"o:hor50-Cursor",
	"a:blinkwait800-blinkoff500-blinkon1250-Cursor/lCursor",
	"sm:block-Cursor-blinkwait200-blinkoff200-blinkon200",
}

-- relative # lines toggle
vim.opt.relativenumber = false

local powershell_options = {
	shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
	shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
	shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
	shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
	shellquote = "",
	shellxquote = "",
}

for option, value in pairs(powershell_options) do
	vim.opt[option] = value
end
