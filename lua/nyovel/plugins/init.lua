-- plugins.lua

return {
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    config = function()
      vim.api.nvim_set_keymap('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { noremap = true, silent = true })
    end
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  }
}

