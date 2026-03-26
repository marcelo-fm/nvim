return {
  {
    "olimorris/codecompanion.nvim",
    version = "^18.0.0",
    opts = {
      interactions = {
        chat = {
          adapter = {
            name = "copilot",
            model = "gpt-4.1",
          },
        },
        inline = {
          adapter = {
            name = "copilot",
            model = "gpt-4.1",
          },
        }
      }
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
  }, {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "codecompanion" }
}, {
  "OXY2DEV/markview.nvim",
  lazy = false,
  opts = {
    preview = {
      filetypes = { "markdown", "codecompanion" },
      ignore_buftypes = {},
    },
  },
}, {
  "HakonHarnes/img-clip.nvim",
  opts = {
    filetypes = {
      codecompanion = {
        prompt_for_file_name = false,
        template = "[Image]($FILE_PATH)",
        use_absolute_path = true,
      },
    },
  },
}
}
