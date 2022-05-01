-- require'lspconfig'.tsserver.setup{}
require'lspconfig'.tsserver.setup{
    cmd = { "typescript-language-server", "--stdio" },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities());
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
        hostInfo = "neovim"
    },
    -- root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
    root_dir = function() return vim.loop.cwd() end
}
