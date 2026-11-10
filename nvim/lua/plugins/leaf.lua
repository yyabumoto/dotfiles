-- Markdown preview with leaf (https://github.com/RivoLink/leaf)
-- Opens `leaf --watch <file>` in a right split terminal; leaf reloads on every :write.
-- Requires the `leaf` binary on PATH.

local function leaf_preview()
  if vim.fn.executable("leaf") == 0 then
    vim.notify("leaf is not installed", vim.log.levels.ERROR)
    return
  end

  local file = vim.api.nvim_buf_get_name(0)
  if file == "" then
    vim.notify("Save the buffer before previewing it with leaf", vim.log.levels.WARN)
    return
  end
  if vim.bo.modified then
    vim.cmd("write")
  end

  -- Same cmd + cwd => same terminal, so pressing the key again toggles the preview
  Snacks.terminal({ "leaf", "--watch", file }, {
    win = { position = "right", width = 0.45 },
  })
end

return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>cP", leaf_preview, ft = "markdown", desc = "Markdown Preview (leaf)" },
  },
}
