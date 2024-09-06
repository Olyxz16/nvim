return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "csharp_ls",
                    "gopls",
                    "html",
                    "htmx",
                    "cssls",
                    "jsonls",
                    "tsserver",
                    "autotools_ls",
                    "tailwindcss",
                    "astro",
                    "dockerls",
                    "docker_compose_language_service",
                    "templ",
                },
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {
                            capabilities = capabilities
                        }
                    end
                }
            })
        end,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities;
            -- C setup
            lspconfig.clangd.setup { cmd = {'clangd.exe'} }
            -- Templ setup
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
                filetypes = { "templ, astro, javascript, typescript, react, html" },
                init_options = { userLanguages = { templ = "html" } }
            })
            local templConf = { capabilities = capabilities, filetypes = { "html", "templ" } }
            lspconfig.html.setup(templConf)
            lspconfig.htmx.setup(templConf)

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.diagnostics.erb_lint,
                    null_ls.builtins.diagnostics.rubocop,
                    null_ls.builtins.formatting.rubocop,
                },
            })

            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    }
}
