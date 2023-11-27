return {
  {
    "ThePrimeagen/harpoon",
    keys = {
      {
        "<leader>hm",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Mark file",
      },
      {
        "<leader>hq",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Quick menu",
      },
      {
        "<leader>fh",
        function()
          require("telescope").extensions.harpoon.marks()
        end,
        desc = "Find marks",
      },
      {
        "<leader>hn",
        function()
          require("harpoon.ui").nav_next()
        end,
        desc = "Next mark",
      },
      {
        "<leader>hp",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "Previous mark",
      },
    },
    config = function()
      require("telescope").load_extension("harpoon")
    end,
  },
}
