return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim"
  },
  { 
    "neovim/nvim-lspconfig"
  }
}
