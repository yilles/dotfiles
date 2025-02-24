vim.o.encoding = "utf-8"

vim.wo.number = true

vim.o.autoindent = true

vim.o.tabstop = 4

vim.o.shiftwidth = 4

vim.o.expandtab = true

vim.o.incsearch = true

vim.cmd("syntax on")

vim.cmd("filetype plugin indent on")

vim.cmd("colorscheme desert")

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

require("nvim-autopairs").setup({
  enable_moveright = true,
  check_ts = true,
  map_cr = true,
})
