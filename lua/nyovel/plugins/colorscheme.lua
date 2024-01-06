return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "AndreM222/copilot-lualine",
    },
    config = function()
    require("lualine").setup {
      options = {
        -- component_separators = { left = "", right = "" },
        -- section_separators = { left = "", right = "" },
        -- component_separators = { left = "", right = "" },
        -- section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },

        ignore_focus = { "NvimTree" },
      },
      sections = {
        -- lualine_a = { {"branch", icon =""} },
        -- lualine_b = { diff },
        -- lualine_c = { "diagnostics" },
        -- lualine_x = { copilot },
        -- lualine_y = { "filetype" },
        -- lualine_z = { "progress" },
        -- lualine_a = { "mode" },
        lualine_a = {},
        lualine_b = { "branch" },
        lualine_c = { diagnostics },
        -- lualine_x = { diff, "copilot", filetype },
        lualine_x = { "copilot", filetype },
        lualine_y = { "progress" },
        lualine_z = {},
      },
      -- extensions = { "quickfix", "man", "fugitive", "oil" },
      extensions = { "quickfix", "man", "fugitive" },
    }
  end
  },
}
