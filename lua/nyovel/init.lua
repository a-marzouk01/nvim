require("nyovel.set")
require("nyovel.remap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("nyovel.plugins")

require('nyovel.config.telescope')
require('nyovel.config.treesitter')
require('nyovel.config.lsp')
require('nyovel.config.null-ls')
require('nyovel.config.comp')

vim.g.sourcegraph_token = 'sgp_636f79ad2075640f_986c3b61b761ece27960d80a73ac87391bf5afca'

vim.cmd [[command! -nargs=+ Sourcegraph call v:lua.sourcegraph(<f-args>)]]
function _G.sourcegraph(query)
    vim.cmd("silent exec '!src -token ' .. vim.g.sourcegraph_token .. ' ' .. a:query")
end

