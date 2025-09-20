return {
   "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
       require("everforest").setup({
        transparent_background_level = 1
      })
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme('everforest')
    end
}
