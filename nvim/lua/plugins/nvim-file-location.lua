return {
  "diegoulloao/nvim-file-location",
  keys = { { "<leader>fy", desc = "Copy file location" } },
  opts = {
    keymap = "<leader>fy",
    mode = "workdir",
    add_line = false,
    add_column = false,
    default_register = "*",
  },
}
