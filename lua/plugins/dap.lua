return {
  {
    "mfussenegger/nvim-dap",               -- The core DAP client
    event = "VeryLazy",                   -- Lazy-load on demand
    keys = {                              -- Override or add these mappings
      -- Continue execution
      { "<F5>",  function() require("dap").continue() end,    desc = "DAP Continue" },
      -- Step over the current line
      { "<F10>", function() require("dap").step_over() end,   desc = "DAP Step Over" },
      -- Step into functions
      { "<F11>", function() require("dap").step_into() end,   desc = "DAP Step Into" },
      -- Step out of the current function
      { "<F12>", function() require("dap").step_out() end,    desc = "DAP Step Out" },
      -- Terminate the debug session
      { "<leader>dt", function() require("dap").terminate() end, desc = "DAP Terminate" },
    },
    -- config = function(_, opts)
    --   require("dap").setup(opts)         -- Apply any additional DAP config
    -- end,
    config = function() end,
  },
}
