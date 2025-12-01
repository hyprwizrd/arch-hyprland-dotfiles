-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        treesitter = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        mason = true,
        which_key = true,
        notify = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end
}

