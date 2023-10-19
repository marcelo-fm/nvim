-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>Dt", ":DBUIToggle<CR>", { desc = "Toggle DBUI", noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>Dc",
  ":DBUIAddConnection<CR>",
  { desc = "Add DBUI Connection", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>Df",
  ":DBUIFindBuffer<CR>",
  { desc = "Find DBUI Buffer", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fd",
  ":DBUIFindBuffer<CR>",
  { desc = "Find DBUI Buffer", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>cce",
  ":Copilot enable <CR>",
  { desc = "Enable Copilot", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ccd",
  ":Copilot disable <CR>",
  { desc = "Disable Copilot", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ccp",
  ":Copilot panel <CR>",
  { desc = "Open Copilot Panel", noremap = true, silent = true }
)
