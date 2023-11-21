return {
  {
    "LintaoAmons/easy-commands.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<F5>",
        "<cmd>DebugStartOrContinue<cr>",
      },
      {
        "<F11>",
        "<cmd>DebugStepInto<cr>",
      },
      {
        "<F10>",
        "<cmd>DebugStepOver<cr>",
      },
      {
        "<C-<F5>>",
        "<cmd>DebugStop<cr>",
      },
      {
        "<C-<F10>>",
        "<cmd>DebugRestart<cr>",
      },
      {
        "<F6>",
        "<cmd>DebugRunToCursor<cr>",
      },
    },
    opts = {},
  },
  {
    "LintaoAmons/scratch.nvim",
    event = "VimEnter",
  },
}
