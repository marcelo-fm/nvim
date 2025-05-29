if true then
  return {}
end
return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "default",
      ["<A-1>"] = {
        function(cmp)
          cmp.accept({ index = 1 })
        end,
      },
      ["<A-2>"] = {
        function(cmp)
          cmp.accept({ index = 2 })
        end,
      },
      ["<A-3>"] = {
        function(cmp)
          cmp.accept({ index = 3 })
        end,
      },
      ["<A-4>"] = {
        function(cmp)
          cmp.accept({ index = 4 })
        end,
      },
      ["<A-5>"] = {
        function(cmp)
          cmp.accept({ index = 5 })
        end,
      },
      ["<A-6>"] = {
        function(cmp)
          cmp.accept({ index = 6 })
        end,
      },
      ["<A-7>"] = {
        function(cmp)
          cmp.accept({ index = 7 })
        end,
      },
      ["<A-8>"] = {
        function(cmp)
          cmp.accept({ index = 8 })
        end,
      },
      ["<A-9>"] = {
        function(cmp)
          cmp.accept({ index = 9 })
        end,
      },
      ["<A-0>"] = {
        function(cmp)
          cmp.accept({ index = 10 })
        end,
      },
    },
    completion = {
      menu = {
        draw = {
          columns = { { "item_idx" }, { "kind_icon" }, { "label", "label_description", gap = 1 } },
          components = {
            item_idx = {
              text = function(ctx)
                return ctx.idx == 10 and "0" or ctx.idx >= 10 and " " or tostring(ctx.idx)
              end,
              highlight = "BlinkCmpItemIdx", -- optional, only if you want to change its color
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    require("blink.cmp").setup(opts)
    --   vim.api.nvim_create_autocmd("User", {
    --     pattern = "BlinkCmpMenuOpen",
    --     callback = function()
    --       require("copilot.suggestion").dismiss()
    --       vim.b.copilot_suggestion_hidden = true
    --     end,
    --   })
    --   vim.api.nvim_create_autocmd("User", {
    --     pattern = "BlinkCmpMenuClose",
    --     callback = function()
    --       vim.b.copilot_suggestion_hidden = false
    --     end,
    --   })
  end,
}
