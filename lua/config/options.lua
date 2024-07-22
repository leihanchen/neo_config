-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff_lsp"

-- Enable LazyVim auto format
vim.g.autoformat = false

-- Enable global access to clipboard
vim.opt.clipboard = "unnamedplus"

-- Some OS detectors
local is_wsl = vim.fn.has("wsl") == 1

-- Enable clipboard integrationsvim
-- WSL Clipboard support
if is_wsl then
  -- This is NeoVim's recommended way to solve clipboard sharing if you use WSL
  -- See: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
else
  -- Use the predifined clipboard provider installed on $PATH
  -- See https://zhuanlan.zhihu.com/p/419472307
  vim.g.clipboard = {
    name = "myClipboard",
    copy = {
      ["+"] = "clipboard-provider copy",
      ["*"] = "clipboard-provider copy",
    },
    paste = {
      ["+"] = "clipboard-provider paste",
      ["*"] = "clipboard-provider paste",
    },
    cache_enabled = 0,
  }
end
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
