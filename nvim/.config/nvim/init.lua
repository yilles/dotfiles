vim.o.encoding = 'utf-8'

vim.wo.number = true

vim.o.autoindent = true

vim.o.tabstop = 4

vim.o.shiftwidth = 4

vim.o.expandtab = true

vim.o.incsearch = true

vim.cmd('syntax on')

vim.cmd('filetype plugin indent on')

vim.cmd('colorscheme desert')

require('nvim-autopairs').setup({
  enable_moveright = true,
  check_ts = true,
  map_cr = true,
})

local cmp = require'cmp'
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').gopls.setup{
  capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}

require('lspconfig').rust_analyzer.setup{
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = { command = "clippy" },
    }
  }
}
