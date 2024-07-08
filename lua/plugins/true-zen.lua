-- You can use any plugin specification from lazy.nvim
return {
  "Pocco81/TrueZen.nvim",
  cmd = { "TZAtaraxis", "TZMinimalist" },
  config = function()
    require "configs.truezen" -- just an example path
  end,
}
