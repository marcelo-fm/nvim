return {
  "linux-cultist/venv-selector.nvim",
  branch = "main",
  cmd = "VenvSelect",
  enabled = function()
    return LazyVim.has("telescope.nvim")
  end,
  opts = {
    settings = {
      options = {
        notify_user_on_venv_activation = true,
        anaconda_base_path = "C:\\Program Files\\ArcGIS\\Pro\\bin\\Python\\envs",
        anaconda_envs_path = "C:\\Users\\marcelo.mesquita\\AppData\\Local\\ESRI\\conda\\envs",
      },
    },
  },
  --  Call config for python files and load the cached venv automatically
  ft = "python",
  keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
