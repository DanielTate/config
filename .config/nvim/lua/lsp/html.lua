local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities());

require'lspconfig'.html.setup{
    cmd = { "vscode-html-language-server", "--stdio" },
    capabilities = capabilities,
    filetypes = { "html" },
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    },
    root_dir = function() return vim.loop.cwd() end,
    settings = {}
}
