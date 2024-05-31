local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    python = { "black" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
    timeout_ms = 500,
  },
}

require("conform").setup(options)
