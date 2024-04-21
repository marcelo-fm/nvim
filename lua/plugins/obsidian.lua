return {
  {
    "epwalsh/obsidian.nvim",
    enabled = true,
    version = "*",
    lazy = true,
    ft = "markdown",
    event = {
      "BufReadPre /mnt/c/Users/marcelo.mesquita/Documentos/'Obsidian Vault'/**.md",
      "BufNewFile /mnt/c/Users/marcelo.mesquita/Documentos/'Obsidian Vault'/**.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      " nvim-telescope/telescope.nvim",
      "nvim-treesitter",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "personal",
            path = "/mnt/c/Users/marcelo.mesquita/Documentos/'Obsidian Vault'",
          },
        },
        completion = {
          nvim_cmp = true,
          min_chars = 2,
        },
        new_notes_location = "notes_subdir",
      })
    end,
  },
}
