return {
    {
        "williamboman/mason.nvim",
        --lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        --lazy = false,
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
                    "docker_compose_language_service"
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
        --lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup { cmd = {'clangd.exe'} }

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
