-- custom/plugins/init.lua

return {

    ["elkowar/yuck.vim"] = { ft = "yuck" },

    ["NvChad/nvterm"] = {
      config = function()
         require "plugins.configs.nvterm"
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },

   ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
         require("telescope").load_extension "media_files"
      end,
   },
}
