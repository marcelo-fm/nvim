return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
      "BufReadPre /mnt/c/Users/marcelo.mesquita/Documentos/obsidian/**.md",
      "BufNewFile /mnt/c/Users/marcelo.mesquita/Documentos/obsidian/**.md",
      "BufReadPre ~/Documents/obsidian/**.md",
      "BufNewFile ~/Documents/obsidian/**.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      workspaces = {
        {
          name = "pessoal",
          path = "/mnt/c/Users/marcelo.mesquita/Documentos/obsidian",
        },
        {
          name = "pessoal-wsl",
          path = "~/Documents/obsidian",
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      daily_notes = {
        folder = "'3 - Recursos'/'Daily Notes'",
        template = "Templates/'Daily notes template'",
      },
      new_notes_location = "notes_subdir",
      templates = {
        folder = "Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
      },
      picker = {
        name = "telescope.nvim",
        mappings = {
          new = "<C-x>",
          insert_link = "<C-l>",
        },
      },
      sort_by = "modified",
      sort_reversed = true,
      open_notes_in = "current",
    },
  },
}
