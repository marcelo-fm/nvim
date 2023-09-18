return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
