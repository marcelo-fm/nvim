return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
        -- Set to false if you still want to use netrw.
        default_file_explorer = true,
        keymaps = {
          ["g?"] = "actions.show_help",
          ["<CR>"] = "actions.select",
          ["<C-s>"] = "actions.select_vsplit",
          ["<C-h>"] = "actions.select_split",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["<C-l>"] = "actions.refresh",
          ["<BS>"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["gs"] = "actions.change_sort",
          ["gx"] = "actions.open_external",
          ["g."] = "actions.toggle_hidden",
          ["g\\"] = "actions.toggle_trash",
        },
        -- Set to false to disable all of the above keymaps
        use_default_keymaps = true,
      })
    end,
  },
  {
    "kelly-lin/ranger.nvim",
    enabled = false,
    config = function()
      require("ranger-nvim").setup({
        replace_netrw = true,
        enable_cmds = false,
        ui = {
          border = "single",
          height = 10,
          width = 10,
          x = 1,
          y = 1,
        },
      })
      vim.api.nvim_set_keymap("n", "<leader>e", "", {
        noremap = true,
        callback = function()
          require("ranger-nvim").open(true)
        end,
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    enabled = false,
    config = function()
      require("neo-tree").setup({
        filesystem = {
          window = {
            --        mappings = {
            --          -- Open with Filesystem
            --          ["o"] = "system_open",
            --          -- Switch between filesystem, buffers and git_status
            --        },
            popup = {
              position = { col = "100%", row = "2" },
              size = function(state)
                local root_name = vim.fn.fnamemodify(state.path, ":~")
                local root_len = string.len(root_name) + 4
                return {
                  width = math.max(root_len, 50),
                  height = vim.o.lines - 6,
                }
              end,
            },
          },
          -- commands = {
          --   -- Open with Filesystem
          --   system_open = function(state)
          --     local node = state.tree:get_node()
          --     local path = node:get_id()
          --     -- Linux: open file in default application
          --     vim.fn.jobstart({ "xdg-open", path }, { detach = true })
          --   end,
          -- },
        },
      })
    end,
  },
}
