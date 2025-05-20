return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local lspconfig = require('lspconfig')

        local on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        end
        -- local capabilities = require('blink.cmp').get_lsp_capabilities()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())


        lspconfig.clangd.setup({
            on_attach = on_attach,
            capabilities = capabilities
        })
        lspconfig.lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities
        })
        lspconfig.arduino_language_server.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {
                "arduino-language-server",
                "-cli", "arduino-cli",
                "-cli-config", "/home/nyovel/.arduino15/arduino-cli.yaml",
                "-fqbn", "arduino:avr:uno"
            },
            filetypes = { "ino" },
            root_dir = function(fname)
                return lspconfig.util.root_pattern("sketch.ino", ".git")(fname) or vim.fn.getcwd()
            end,
        })
    end
}
