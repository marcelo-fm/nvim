require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.clipboard = "unnamedplus"

local function is_wsl()
  local version_file = io.open("/proc/version", "rb")
  if version_file ~= nil and string.find(version_file:read("*a"), "microsoft") then
    version_file:close()
    return true
  end
  return false
end

-- If current linux is under WSL then use wclip.exe
-- More info: https://github.com/memoryInject/wsl-clipboard
if is_wsl() then
  vim.g.clipboard = {
    name = "wsl-clipboard",
    copy = {
      ["+"] = "wcopy",
      ["*"] = "wcopy",
    },
    paste = {
      ["+"] = "wpaste",
      ["*"] = "wpaste",
    },
    cache_enabled = true,
  }
end

local fileExtensions = { "xlsx", "docx", "pptx", "pdf" }
local openCmd = "xdg-open"
if is_wsl() then
  openCmd = "wsl-open"
end
for i = 1, #fileExtensions do
  vim.cmd([[autocmd BufReadCmd *.]] .. fileExtensions[i] .. [[ silent !]] .. openCmd .. [[ % & | bd]])
end

-- Define a function to set up the autocommand for .xlsx files
local function setup_file_handler()
  vim.cmd([[
    autocmd BufReadCmd *.xlsx silent !wsl-open % &
    ]])
  vim.cmd([[
    autocmd BufReadCmd *.docx silent !wsl-open % &
    ]])
  vim.cmd([[
    autocmd BufReadCmd *.pdf silent !wsl-open % &
    ]])
end

-- local function handle_file(fileExtension)
--   vim.cmd([[autocmd BudReadCmd *.]] .. fileExtension .. [[ silent !wsl-open % & | bd]])
-- end
--
-- handle_file("xlsx")
-- handle_file("docx")
-- handle_file("pptx")
-- handle_file("pdf")

-- Call the function to set up the handler
setup_file_handler()

