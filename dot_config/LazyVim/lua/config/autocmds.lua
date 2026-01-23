-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  desc = "Set filetype for SSH config directory",
  pattern = "*/.ssh/config.d/*",
  command = "set filetype=sshconfig",
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local coverage = require("coverage")
    if vim.fn.filereadable("coverage.lcov") == 1 then
      coverage.load_lcov("coverage.lcov", true)
    end
  end,
})
