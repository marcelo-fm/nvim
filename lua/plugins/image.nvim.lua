return {
  "3rd/image.nvim",
  enabled = false,
  opts = {
    backend = "ueberzug",
    max_width = 100,
    max_height = 12,
    max_height_window_percentage = math.huge, -- this is necessary for a good experience
    max_width_window_percentage = math.huge,
    window_overlap_clear_enabled = true,
    window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
  },
}
