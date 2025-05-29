return {
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    {
        "folke/snacks.nvim"
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            -- options
        },
    },
    {
        "tpope/vim-sensible"
    },
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
        config = function()
            vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>')
            vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>')
            vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>')
            vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>')
        end
    },
    {
        "mbbill/undotree",
        keys = {
            {
                "<leader>u",
                function() vim.cmd("UndotreeToggle") end,
                desc = "Toggle Undotree",
            },
        },
    },
    {
        "tpope/vim-commentary",
        lazy = false,
    },

}
