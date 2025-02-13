return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "jackplus-xyz/binary.nvim",
    opts = {
      style = "system", -- Theme style: "system" | "light" | "dark"
      colors = { -- Colors used for the "light" theme; reversed automatically for "dark"
        fg = "#000000", -- Foreground color
        bg = "#ffffff", -- Background color
      },
      use_default_reversed_group = true, -- Use the default `reversed_group` for a better startup experience
      reversed_group = {}, -- Highlight groups with reversed `fg` and `bg` (e.g., `Search`, `Visual`)
    },
  },
  { "alligator/accent.vim" },
  { "andreasvc/vim-256noir" },
  { "nyoom-engineering/oxocarbon.nvim" },
}
