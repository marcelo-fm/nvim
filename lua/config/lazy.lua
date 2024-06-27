local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        -- "tutor",
        "zipPlugin",
      },
    },
  },
})

vim.filetype.add({
  extension = {
    jinja = "jinja",
    jinja2 = "jinja",
    j2 = "jinja",
  },
})

-- if you want to debug
vim.lsp.set_log_level("debug")

local nvim_lsp = require("lspconfig")
local configs = require("lspconfig.configs")

if not configs.jinja_lsp then
  configs.jinja_lsp = {
    default_config = {
      name = "jinja-lsp",
      cmd = { "path_to_lsp_or_command" },
      filetypes = { "jinja", "rust" },
      root_dir = function(fname)
        return "."
        --return nvim_lsp.util.find_git_ancestor(fname)
      end,
      init_options = {
        templates = "./templates",
        backend = { "./src" },
        lang = "rust",
      },
    },
  }
end
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
nvim_lsp.jinja_lsp.setup({
  capabilities = capabilities,
})
nvim_lsp.jinja_lsp.setup({})
