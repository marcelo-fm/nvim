-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.spelllang = "pt_br"

-- Highlight the 80th and 100th columns
vim.opt.colorcolumn = "88"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"

vim.treesitter.query.add_directive("inject-go-tmpl!", function(_, _, bufnr, _, metadata)
  local fname = vim.fs.basename(vim.api.nvim_buf_get_name(bufnr))
  local _, _, ext, _ = string.find(fname, ".*%.(%a+)(%.%a+)")
  metadata["injection.language"] = ext
end, {})

vim.filetype.add({
  extension = {
    tmpl = "gotmpl",
  },
})

vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  -- paste = {
  --   ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
  --   ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  -- },
}
