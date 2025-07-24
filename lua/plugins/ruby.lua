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

  -- { "melopilosyan/rspec-integrated.nvim" },
  -- Configure conform.nvim for formatting
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

  -- Make sure standardrb formatter is available
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
