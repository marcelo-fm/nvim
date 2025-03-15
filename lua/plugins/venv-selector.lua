return {
  "linux-cultist/venv-selector.nvim",
  enabled = true,
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  opts = {
    anaconda_envs_path = "/mnt/c/Users/marcelo.mesquita/AppData/Local/ESRI/conda/envs",
    anaconda = {
      python_executable = "python",
      python_parent_dir = "envs",
    },
    name = { "venv", ".venv" },
    dap_enabled = true,
  },
  -- event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { "<leader>cV", "<cmd>VenvSelect<cr>" },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { "<leader>cv", "<cmd>VenvSelectCached<cr>" },
  },
}
