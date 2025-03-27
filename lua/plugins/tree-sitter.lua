return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local plugin = require("nvim-treesitter.configs")
    plugin.setup {
      ensure_installed = {
        "lua", "luadoc", "vim", "vimdoc",
        "query",
        "bash",
        "html", "markdown", "markdown_inline",
        "c",
        "zig", "rust",
        -- "swift",
        "nix",
      },

      sync_install = false,
      auto_install = true,
      ignore_install = {},

      highlight = {
        enable = true
      },

      indent = {
        enable = true
      },
    }
  end,
}
