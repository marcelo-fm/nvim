require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>tt", function()
  require("base46").toggle_theme()
end, { desc = "Toggle light and dark theme" })

-- map("n", "<leader>Dt", ":DBUIToggle<CR>", { desc = "Toggle DBUI", noremap = true, silent = true })
-- map(
--   "n",
--   "<leader>Dc",
--   ":DBUIAddConnection<CR>",
--   { desc = "Add DBUI Connection", noremap = true, silent = true }
-- )
-- map("n", "<leader>Df", ":DBUIFindBuffer<CR>", { desc = "Find DBUI Buffer", noremap = true, silent = true })
-- map("n", "<leader>fd", ":DBUIFindBuffer<CR>", { desc = "Find DBUI Buffer", noremap = true, silent = true })
-- map("n", "<leader>cce", ":Copilot enable <CR>", { desc = "Enable Copilot", noremap = true, silent = true })
-- map("n", "<leader>ccd", ":Copilot disable <CR>", { desc = "Disable Copilot", noremap = true, silent = true })
-- map(
--   "n",
--   "<leader>ccp",
--   ":Copilot panel <CR>",
--   { desc = "Open Copilot Panel", noremap = true, silent = true }
-- )
--
-- map("n", "<leader>e", ":Oil--float<CR>", { desc = "Open directory", noremap = true, silent = true })

-- TIP: Disable arrow keys in normal mode
-- map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { noremap = false })
-- map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { noremap = false })
-- map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { noremap = false })
-- map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { noremap = false })

map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
map("n", "<leader>fmg", "<cmd>CellularAutomaton game_of_life<CR>")
