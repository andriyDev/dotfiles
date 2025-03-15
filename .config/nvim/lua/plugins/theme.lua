return {
  {
    "ellisonleao/gruvbox.nvim",
    -- Make sure we load this during startup so we can use it as the main colorscheme.
    lazy = false,
    -- Load this before all other plugins.
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
}
