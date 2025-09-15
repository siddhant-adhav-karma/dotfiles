local theme_file = vim.fn.stdpath("config") .. "/theme.txt"

local function set_theme(name)
  vim.cmd.colorscheme(name)
  vim.fn.writefile({ name }, theme_file)
end

-- Load last theme after Lazy loads all plugins
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    if vim.fn.filereadable(theme_file) == 1 then
      local last_theme = vim.fn.readfile(theme_file)[1]
      if last_theme and #last_theme > 0 then
        pcall(vim.cmd.colorscheme, last_theme)
      end
    end
  end,
})

-- Telescope theme picker
vim.keymap.set("n", "<leader>cp", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
    attach_mappings = function(_, map)
      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")

      local function select(bufnr)
        local selection = action_state.get_selected_entry()
        actions.close(bufnr)
        set_theme(selection.value)
      end

      map("i", "<CR>", select)
      map("n", "<CR>", select)
      return true
    end,
  })
end, { desc = "Telescope theme picker" })
