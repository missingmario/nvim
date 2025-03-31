return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp"
  },
  config = function()
    local lspconfig = require("lspconfig")
    local blink = require("blink.cmp")

    local servers = {
      lua_ls = {},
      nixd = {},
      zls = {},
    }

    for server, config in pairs(servers) do
      local capabilities = blink.get_lsp_capabilities(config.capabilities)
      config.capabilities = capabilities

      lspconfig[server].setup(config)
    end

    vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  end
}
