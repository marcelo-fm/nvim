return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    experimental_watch_for_changes = true,
    delete_to_trash = true,
  },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      view_options = {
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    vim.keymap.set('n', '<leader>-', require('oil').toggle_float)
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
