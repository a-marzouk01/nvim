vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.5',
          -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "catppuccin/nvim", as = "catppuccin" }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }


  use ('jiangmiao/auto-pairs')

  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    event = "BufRead",
}


  use {
    "sbdchd/neoformat",
    event = "BufRead",
  }

  use {
    'christoomey/vim-tmux-navigator',
    config = function()
      -- Define the commands
      vim.api.nvim_set_keymap('n', '<c-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<c-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<c-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<c-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })
    end,
  }

  use ({  "nvim-tree/nvim-tree.lua" })
  use ({ "nvim-tree/nvim-web-devicons" })

  use ({ 'ThePrimeagen/vim-be-good' })

  use ({ 'vim-airline/vim-airline' })
  use ({ 'vim-airline/vim-airline-themes' })

  use ({ 'Exafunction/codeium.vim' })

end)
