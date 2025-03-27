-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function open_config_file()
  local filepath = require("obsidian").get_client().opts.workspaces[1].path .. "/Home.md"
  if vim.fn.filereadable(filepath) == 1 then
    vim.api.nvim_command("edit " .. filepath)
  else
    vim.notify("File not found: " .. filepath, vim.log.levels.ERROR)
  end
end

vim.keymap.set("n", "<leader>fo", open_config_file, { desc = "open obsidian folder" })
