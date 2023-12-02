return {
  {
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("rest-nvim").setup({
        --- Get the same options from Packer setup
        ---- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end,
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = ".env",
        custom_dynamic_variables = {},
        yank_dry_run = true,
      })
    end,
    keys = {
      --{ "n", "<leader>r", "<Nop>", desc = "Rest", noremap = false },
      --{ "n", "<leader>crr", "<Plug>RestNvim", desc = "Run the request under cursor", noremap = false },
      --{ "n", "<leader>crp", "<Plug>RestNvimPreview", desc = "Preview the request cURL command", noremap = false },
      --{ "n", "<leader>crl", "<Plug>RestNvimLast", desc = "Re-run the last request", noremap = false },
      --{ "n", "<leader>ru", "<Plug>RestNvimRun" },
      --{ "n", "<leader>rf", "<Plug>RestNvimRunLast" },
      --{ "n", "<leader>rc", "<Plug>RestNvimContinue" },
      --{ "n", "<leader>rq", "<Plug>RestNvimStop" },
      --{ "n", "<leader>rt", "<Plug>RestNvimToggleResult" },
      --{ "n", "<leader>rh", "<Plug>RestNvimHistory" },
      --{ "n", "<leader>rd", "<Plug>RestNvimDependency" },
      --{ "n", "<leader>re", "<Plug>RestNvimEnvironment" },
      --{ "n", "<leader>rw", "<Plug>RestNvimWindow" },
      --{ "n", "<leader>ri", "<Plug>RestNvimInfo" },
      --{ "n", "<leader>ry", "<Plug>RestNvimYankInfo" },
      --{ "n", "<leader>ro", "<Plug>RestNvimOpenInBrowser" },
      --{ "n", "<leader>rg", "<Plug>RestNvimGenerate" },
      --{ "n", "<leader>ra", "<Plug>RestNvimGenerateAsync" },
      --{ "n", "<leader>rr", "<Plug>RestNvimRefresh" },
      --{ "n", "<leader>rc", "<Plug>RestNvimClear" },
      --{ "n", "<leader>rf", "<Plug>RestNvimClearLast" },
      --{ "n", "<leader>rs", "<Plug>RestNvimStop" },
      --{ "n", "<leader>rt", "<Plug>RestNvimToggleResult" },
      --{ "n", "<leader>rh", "<Plug>RestNvimHistory" },
      --{ "n", "<leader>rd", "<Plug>RestNvimDependency" },
      --{ "n", "<leader>re", "<Plug>RestNvimEnvironment" },
    },
  },
}
