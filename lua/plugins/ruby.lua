return {
  -- Configure ruby_lsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false, -- Don't install via Mason since you're using the gem
          settings = {
            rubyLsp = {
              formatter = "standard",
            },
          },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ruby = { "standardrb" },
        eruby = { "htmlbeautifier" }, -- Add ERB formatting
        css = { "prettier" },
        scss = { "prettier" },
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
    },
  },

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

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "standardrb",
        "htmlbeautifier",
      },
    },
  },

  {
    "tpope/vim-endwise",
    event = "InsertEnter",
    ft = { "ruby", "lua", "vim", "sh", "zsh", "elixir", "crystal", "matlab", "vb" },
  },
}
