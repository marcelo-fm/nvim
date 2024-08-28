return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "andrew-george/telescope-themes",
        config = function()
          -- load extension
          local telescope = require("telescope")
          telescope.load_extension("themes")
        end,
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "barrett-ruth/http-codes.nvim",
        config = function()
          require("telescope").load_extension("http")
        end,
      },
      {
        "nvim-telescope/telescope-github.nvim",
        config = function()
          require("telescope").load_extension("gh")
        end,
        keys = {
          {
            "<leader>ghi",
            function()
              require("telescope.builtin").extensions.gh.issues()
            end,
            desc = "Github Issues",
          },
          {
            "<leader>ghp",
            function()
              require("telescope.builtin").extensions.gh.pull_request()
            end,
            desc = "Github Pull Requests",
          },
          {
            "<leader>ghg",
            function()
              require("telescope.builtin").extensions.gh.gist()
            end,
            desc = "Github Gists",
          },
          {
            "<leader>ghr",
            function()
              require("telescope.builtin").extensions.gh.run()
            end,
            desc = "Github Runs",
          },
        },
      },
      {
        "chip/telescope-software-licenses.nvim",
        config = function()
          require("telescope").load_extension("software-licenses")
        end,
      },
      {
        "xiyaowong/telescope-emoji.nvim",
        config = function()
          require("telescope").load_extension("emoji")
        end,
      },
      {
        "doctorfree/cheatsheet.nvim",
        event = "VeryLazy",
        dependencies = {
          { "nvim-telescope/telescope.nvim" },
          { "nvim-lua/popup.nvim" },
          { "nvim-lua/plenary.nvim" },
        },
        config = function()
          local ctactions = require("cheatsheet.telescope.actions")
          require("cheatsheet").setup({
            bundled_cheetsheets = {
              enabled = { "default", "lua", "markdown", "regex", "netrw", "unicode" },
              disabled = { "nerd-fonts" },
            },
            bundled_plugin_cheatsheets = {
              enabled = {
                "auto-session",
                "goto-preview",
                "octo.nvim",
                "telescope.nvim",
                "vim-easy-align",
                "vim-sandwich",
              },
              disabled = { "gitsigns" },
            },
            include_only_installed_plugins = true,
            telescope_mappings = {
              ["<CR>"] = ctactions.select_or_fill_commandline,
              ["<A-CR>"] = ctactions.select_or_execute,
              ["<C-Y>"] = ctactions.copy_cheat_value,
              ["<C-E>"] = ctactions.edit_user_cheatsheet,
            },
          })
        end,
        keys = {},
      },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
    },
  },
}
