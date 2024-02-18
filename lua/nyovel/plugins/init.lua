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
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
  { 'tpope/vim-sleuth' },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  { 'folke/which-key.nvim', opts = {} },
  { 'mbbill/undotree' },
  { 'github/copilot.vim' },
}

