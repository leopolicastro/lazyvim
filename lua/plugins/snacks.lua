return {
  "folke/snacks.nvim",
  opts = {
    notifier = { enabled = true },

    picker = {
      hidden = true,
      ignored = true,
      exclude = { "node_modules", ".git" },
    },
  },
}
