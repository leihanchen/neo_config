-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable LazyVim auto format
vim.g.autoformat = true

-- Enable clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Double column number
vim.o.statuscolumn = "%s %l %r"

-- vim.api.nvim_exec(
--   [[
-- let g:clipboard = {
--   \   'name': 'WslClipboard',
--   \   'copy': {
--   \      '+': 'clip.exe',
--   \      '*': 'clip.exe',
--   \    },
--   \   'paste': {
--   \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   \   },
--   \   'cache_enabled': 0,
--   \ }
--                 ]],
--   true
-- )
