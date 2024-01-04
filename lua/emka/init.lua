require("emka.remap")
require("emka.set")

vim.api.nvim_exec([[
    let g:neoformat_cpp_clangformat = {
        \ 'exe': 'clang-format',
        \ 'args': [],
        \ 'stdin': 1,
        \ 'stdout': 1,
        \ 'stderr': 1,
        \ 'startline': 1,
        \ 'tempfile': 0,
        \ 'do_format': 1,
        \ 'errorformat': '%A%f:%l:%c: %trror: %m,%-G%.%#',
        \ 'on_exit': 'Neoformat'
        \ }
]], true)

