return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jinja_lsp = {
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "class\\s*[:=]\\s*['\"]([^'\"]*)['\"]", "class" },
                { "className\\s*[:=]\\s*['\"]([^'\"]*)['\"]", "className" },
              },
            },
            includeLanguages = {
              jinja = "html",
            },
            validate = true,
            lint = {
              cssConflict = "warning",
              invalidApply = "error",
              invalidScreen = "error",
              invalidVariant = "error",
              invalidConfigPath = "error",
            },
          },
        },
      },
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
              autoImportCompletions = true, -- Enable auto import capabilities
              -- ignore = { "*" }, -- Using Ruff
              -- typeCheckingMode = "off", -- Using mypy
            },
          },
        },
      },
    },
  },
}
