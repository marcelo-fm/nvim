return {
  {
    "vhyrro/luarocks.nvim",
    enabled = false,
    priority = 1000,
    config = true,
  },
  {
    "rest-nvim/rest.nvim",
    enabled = false,
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
    keys = {
      {
        "<localleader>rr",
        "<cmd>Rest run<cr>",
        "Run request under the cursor",
      },
      {
        "<localleader>rl",
        "<cmd>Rest run last<cr>",
        "Re-run latest request",
      },
    },
  },
}
