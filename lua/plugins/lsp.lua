return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      require("mason-lspconfig").setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup({})
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        ["jinja_lsp"] = function()
          vim.filetype.add({
            extension = {
              jinja = "jinja",
              jinja2 = "jinja",
              j2 = "jinja",
            },
            init_options = {
              templates = "./templates",
              backend = { "./" },
              lang = "python",
            },
          })
        end,
      })
    end,
  },
}
