return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-rspec", -- This is the correct repository
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
    },
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          rspec_cmd = function()
            return {
              "bundle",
              "exec",
              "rspec",
            }
          end,
        },
      },
    },
  },
}
