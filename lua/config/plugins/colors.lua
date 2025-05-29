return {
        {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
    },
    {
        "blazkowolf/gruber-darker.nvim",
        name = "gruber-darker",
    },
    {
        'folke/tokyonight.nvim',
        name = "tokyonight",
        config = function()
            vim.cmd("colorscheme tokyonight")
        end
    }
}
