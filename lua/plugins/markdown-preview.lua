return {
  {
    "toppair/peek.nvim",
    enabled = true,
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    ft = { "markdown", "md", ".md"},
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
}

