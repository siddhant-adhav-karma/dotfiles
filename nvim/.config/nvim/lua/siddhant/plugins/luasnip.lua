return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",      -- enables LuaSnip in nvim-cmp
    "rafamadriz/friendly-snippets",  -- optional: loads many prebuilt snippets
  },
  config = function()
    local luasnip = require("luasnip")

    -- Load VSCode-style snippets (from friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Load your own custom Lua snippets
    require("luasnip.loaders.from_lua").lazy_load({
      paths = "~/.config/nvim/LuaSnip/snippets",
    })

    -- Optional: configure LuaSnip behavior
    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })

    -- Keybindings for snippet expansion and navigation
    vim.keymap.set({ "i" }, "<C-k>", function() luasnip.expand() end, { silent = true, desc = "Expand snippet" })
    vim.keymap.set({ "i", "s" }, "<C-l>", function() luasnip.jump(1) end, { silent = true, desc = "Next snippet field" })
    vim.keymap.set({ "i", "s" }, "<C-h>", function() luasnip.jump(-1) end, { silent = true, desc = "Prev snippet field" })
  end,
}
