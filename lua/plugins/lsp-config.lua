return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        settings = {
          lint = {
            flake8TypeChecking = {
              exemptModules = { "typing", "typing_Extensions" },
              quoteAnnotations = true,
              runtimeEvaluatedBaseClasses = { "sqlalchemy.orm.DeclarativeBase" },
              runtimeEvaluatedDecorators = {},
              strict = true,
            },
            pylint = {
              allowDunderMethodNames = {
                "__tablename__",
                "__table_args__",
              },
              maxNestedBlocks = 2,
            },
          },
        },
      },
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true, -- Using Ruff
          },
          python = {
            analysis = {
              -- ignore = { "*" }, -- Using Ruff
              -- typeCheckingMode = "off", -- Using mypy
            },
          },
        },
      },
    },
  },
}
