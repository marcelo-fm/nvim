return {
  {
    enabled = false,
    "joerdav/templ.vim",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.tailwindcss.setup({
        settings = {
          tailwindCSS = {
            includeLanguages = {
              templ = "html",
            },
          },
        },
        filetypes = {
          "templ",
          "htmldjango",
          "html",
          "astro",
          "javascript",
          "typescript",
          "react",
        },
        init_options = {
          userLanguages = {
            templ = "html",
          },
        },
      })
      lspconfig.htmx.setup({
        filetypes = { "html", "templ" },
      })
      lspconfig.html.setup({
        filetypes = { "html", "templ" },
      })
    end,
  },
}
