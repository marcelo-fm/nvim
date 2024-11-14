return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<BS>'] = 'actions.parent',
        ['<C-h>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      view_option = { show_hidden = true },
    }
    vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open directory' })
    vim.keymap.set('n', '<leader>-', require('oil').toggle_float)
  end,
}