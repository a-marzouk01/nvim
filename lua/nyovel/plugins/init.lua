return {
    { 
        'ThePrimeagen/harpoon',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<leader>a", mark.add_file)
            vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

            vim.keymap.set("n", "<C-a>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
        end
    },
    { 'mbbill/undotree', cmd = 'UndotreeToggle' },
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
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'catppuccin'
            vim.cmd.hi 'Comment gui=none'
        end,
    },
    {
        "github/copilot.vim"
    }
}
