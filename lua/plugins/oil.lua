return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup()

    vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", {})
  end,
}
