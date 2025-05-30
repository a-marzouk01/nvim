return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },

    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {},
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        }

        require('telescope').load_extension('fzf')
        require('telescope').load_extension('ui-select')

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', "<leader>ff", builtin.find_files)
        vim.keymap.set('n', "<leader>fd", builtin.diagnostics)
        vim.keymap.set('n', "<leader>fg", builtin.live_grep)
        vim.keymap.set('n', "<leader>fw", builtin.grep_string)
        vim.keymap.set('n', "<leader><leader>", builtin.buffers)

        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = '[/] Fuzzily search in current buffer' })

    end
  },
}
