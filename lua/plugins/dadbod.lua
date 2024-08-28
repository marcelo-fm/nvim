return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    local wk = require("which-key")
    wk.add({ { "<leader>D", group = "DBUI" } })
  end,
  keys = {
    { "<leader>Dt", "<CMD>DBUIToggle<CR>", desc = "Toggle DBUI", noremap = true, silent = true },
    { "<leader>Dc", "<CMD>DBUIAddConnection<CR>", desc = "Add DBUI Connection" },
    { "<leader>Df", "<CMD>DBUIFindBuffer<CR>", desc = "Find DBUI Buffer" },
    { "<leader>fd", "<CMD>DBUIFindBuffer<CR>", desc = "Find DBUI Buffer" },
  },
}
