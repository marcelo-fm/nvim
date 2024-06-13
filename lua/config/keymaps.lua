-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>Dt", ":DBUIToggle<CR>", { desc = "Toggle DBUI", noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>Dc",
  ":DBUIAddConnection<CR>",
  { desc = "Add DBUI Connection", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>Df", ":DBUIFindBuffer<CR>", { desc = "Find DBUI Buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fd", ":DBUIFindBuffer<CR>", { desc = "Find DBUI Buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>cce", ":Copilot enable <CR>", { desc = "Enable Copilot", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ccd", ":Copilot disable <CR>", { desc = "Disable Copilot", noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>ccp",
  ":Copilot panel <CR>",
  { desc = "Open Copilot Panel", noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>e", ":Oil--float<CR>", { desc = "Open directory", noremap = true, silent = true })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { noremap = false })
-- vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { noremap = false })
-- vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { noremap = false })
-- vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { noremap = false })

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>fmg", "<cmd>CellularAutomaton game_of_life<CR>")
