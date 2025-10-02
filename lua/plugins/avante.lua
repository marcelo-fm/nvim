if true then
  return {}
end
return {
  "yetone/avante.nvim",
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- ⚠️ must add this setting! ! !
  build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    or "make",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    -- Set "gemini-cli" as the default provider to activate the ACP configuration below.
    provider = "gemini-cli",
    instructions_file = "avante.md",
    -- This acp_providers section configures the Agent Client Protocol (ACP) for Gemini.
    -- It tells avante.nvim how to run the `gemini` command-line tool as an AI agent.
    acp_providers = {
      ["gemini-cli"] = {
        command = "gemini",
        args = { "--experimental-acp" },
        env = {
          NODE_NO_WARNINGS = "1",
          GEMINI_API_KEY = os.getenv("GEMINI_API_KEY"),
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- MCP (Model Client Protocol) integration is provided by the `mcphub.nvim` plugin.
    -- Add this dependency to use MCP features with Avante.
    "ravitemer/mcphub.nvim",
    --- The below dependencies are optional,
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
