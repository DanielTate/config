require'lspconfig'.tailwindcss.setup{
    cmd = { "tailwindcss-language-server", "--stdio" },
    filetypes = {
        "aspnetcorerazor", "astro", "astro-markdown", "blade", "django-html",
        "edge", "eelixir", "ejs", "erb", "eruby", "gohtml", "haml",
        "handlebars", "hbs", "html", "html-eex", "jade", "leaf", "liquid",
        "markdown", "mdx", "mustache", "njk", "nunjucks", "razor",
        "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus",
        "sugarss", "javascript", "javascriptreact", "reason", "rescript",
        "typescript", "typescriptreact", "vue", "svelte", "blade"
    },
    init_options = {
        userLanguages = {
            javascript = "js",
            eelixir = "html-eex",
            eruby = "erb"
        }
    },
    on_new_config = function(new_config)
        if not new_config.settings then
            new_config.settings = {}
        end
        if not new_config.settings.editor then
            new_config.settings.editor = {}
        end
        if not new_config.settings.editor.tabSize then
            -- set tab size for hover
            new_config.settings.editor.tabSize = vim.lsp.util.get_effective_tabstop()
        end
    end,
    -- root_dir = util.root_pattern('.md', 'tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.ts', 'package.json', 'node_modules', '.git'),
    root_dir = function() return vim.loop.cwd() end,
    settings = {
        tailwindCSS = {
            lint = {
                cssConflict = "warning",
                invalidApply = "error",
                invalidConfigPath = "error",
                invalidScreen = "error",
                invalidTailwindDirective = "error",
                invalidVariant = "error",
                recommendedVariantOrder = "warning"
            },
            validate = true
        }
    }
}
