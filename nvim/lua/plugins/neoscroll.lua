return {
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- neoscroll handles smooth scrolling, so disable LazyVim's snacks.scroll to avoid double animation
  {
    "folke/snacks.nvim",
    opts = { scroll = { enabled = false } },
  },
}
