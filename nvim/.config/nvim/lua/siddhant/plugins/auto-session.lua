return {
  "rmagatti/auto-session",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("auto-session").setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/", "~/dev/", "~/downloads", "~/documents", "~/desktop/"
      },
      session_lens = {
        picker = "telescope", -- uses Telescope by default
      },
    })

    local keymap = vim.keymap

    -- Updated keymaps for new :AutoSession API
    keymap.set("n", "<leader>wl", "<cmd>AutoSession search<CR>", { desc = "List all sessions" })
    keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>",    { desc = "Save session for cwd" })
    keymap.set("n", "<leader>wd", "<cmd>AutoSession delete<CR>",  { desc = "Delete session for cwd" }) -- new delete option
  end,
}
