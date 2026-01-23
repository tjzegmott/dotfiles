-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Taskwarrior keymaps
vim.keymap.set("n", "<leader>T", "", { desc = "+taskwarrior" })
vim.keymap.set(
  "n",
  "<leader>Tg",
  "<Cmd>lua require('user_functions.tasks').go_to_task_in_taskwarrior_tui()<CR>",
  { desc = "Go to task", noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<leader>Td",
  "<Cmd>lua require('user_functions.tasks').mark_task_done()<CR>",
  { desc = "Mark task as done", noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<leader>Tc",
  "<Cmd>lua require('user_functions.tasks').create_or_update_task()<CR>",
  { desc = "Create or update task", noremap = true, silent = true }
)

-- nvim-coverage keymaps
vim.keymap.set("n", "<leader>tc", function()
  require("coverage").toggle()
end, { desc = "Toggle test coverage (nvim-coverage)" })

vim.keymap.set("n", "<leader>tL", function()
  require("coverage").load_lcov("coverage.lcov", true)
end, { desc = "Load test coverage (nvim-coverage)" })

vim.keymap.set("n", "<leader>tR", function()
  require("coverage").summary()
end, { desc = "Coverage summary (nvim-coverage)" })
