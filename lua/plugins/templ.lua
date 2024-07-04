return {
  {
    enabled = false,
    "joerdav/templ.vim",
    config = function()
      require("lspconfig").tailwindcss.setup({
        filetypes = {
          "templ",
          "htmldjango",
          -- include any other filetypes where you need tailwindcss
        },
        init_options = {
          userLanguages = {
            templ = "html",
          },
        },
      })
    end,
  },
}
