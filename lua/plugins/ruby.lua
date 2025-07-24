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
  -- Endwise
  {
    "RRethy/nvim-treesitter-endwise",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-treesitter.configs").setup({
        endwise = {
          enable = true,
        },
      })
    end,
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ruby = { "standardrb" },
        eruby = { "htmlbeautifier" }, -- Add ERB formatting
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
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
