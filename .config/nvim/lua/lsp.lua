-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

require('lsp/sumneko_lua')
require('lsp/tailwindcss')
require'lspconfig'.intelephense.setup{}
require('lsp/tsserver')
require('lsp/html')
