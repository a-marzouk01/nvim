return {
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {},

                sync_install = false,

                auto_install = true,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                indent = { enable = true }
            }
        end
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
        "mbbill/undotree",

        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require('rose-pine').setup({
                styles = {
                    italic = false,
                },
            })
        end,
        init = function()
            vim.cmd.colorscheme 'rose-pine'
            vim.cmd.hi 'Comment gui=none'
        end,
    },


}
