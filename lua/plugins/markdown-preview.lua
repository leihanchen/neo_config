-- return {
--   "toppair/peek.nvim",
--   event = { "VeryLazy" },
--   build = "deno task --quiet build:fast",
--   config = function()
--     require("peek").setup({
--       auto_load = true, -- whether to automatically load preview when
--       -- entering another markdown buffer
--       close_on_bdelete = true, -- close preview window on buffer delete
--
--       syntax = true, -- enable syntax highlighting, affects performance
--
--       theme = "dark", -- 'dark' or 'light'
--
--       update_on_change = true,
--
--       app = "webview", -- 'webview', 'browser', string or a table of strings
--       -- explained below
--
--       filetype = { "markdown" }, -- list of filetypes to recognize as markdown
--
--       -- relevant if update_on_change is true
--       throttle_at = 200000, -- start throttling when file exceeds this
--       -- amount of bytes in size
--       throttle_time = "auto", -- minimum amount of time in milliseconds
--       -- that has to pass before starting new render
--     })
--     vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
--     vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
--   end,
--   cmd = {"PeekOpen", "PeekClose" },
-- }
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()     vim.fn["mkdp#util#install"]()
    end,
    lazy = true,
    keys = { { "gm", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
    config = function()
      vim.g.mkdp_auto_close = true
      vim.g.mkdp_open_to_the_world = false
      vim.g.mkdp_port = "7860"
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = true
      vim.g.mkdp_page_title = "${name}"
      vim.g.mkdp_command_for_global = 1
    end,
}
