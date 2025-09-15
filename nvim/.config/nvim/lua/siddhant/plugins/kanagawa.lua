return {
  "rebelot/kanagawa.nvim",
  lazy = false,    -- load at startup
  priority = 1000, -- make sure it loads before other plugins
  config = function()
    require("kanagawa").setup({
      -- optional settings
      compile = false,  -- enable compiling the colorscheme for faster startup
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- set to true if you want transparent background
      dimInactive = false,
      terminalColors = true,
      theme = "wave", -- default: "wave", also available: "dragon", "lotus"
      background = {
        dark = "wave",  -- when vim.o.background = "dark"
        light = "lotus" -- when vim.o.background = "light"
      },
    })

    -- load the colorscheme
    -- vim.cmd("colorscheme kanagawa")
  end,
}
