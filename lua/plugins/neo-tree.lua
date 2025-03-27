return {
  "nvim-neo-tree/neo-tree.nvim",
  tag = "3.31.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    local plugin = require("neo-tree")

    plugin.setup {}

    vim.keymap.set("n", "<leader>tt", "<CMD>Neotree toggle", {})
  end
}
