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
  },
  { 'mbbill/undotree', cmd = 'UndotreeToggle' },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
        mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
  expr = false,
    }
  }
}

