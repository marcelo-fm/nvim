return {
  { "xiyaowong/transparent.nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        bottom_search = false,
        inc_rename = true,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.laststatus = 3
      vim.opt.splitkeep = "screen"
    end,
    opts = {},
  },
}
