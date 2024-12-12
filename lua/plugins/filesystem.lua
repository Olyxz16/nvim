return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            filesystem = {
                window = {
                    mappings = {
                        ["."] = "toggle_hidden",
                        ["H"] = "set_root",
                    },
                },
            },
            window = {
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                },
            },
        },
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        vim.keymap.set('n', '<leader><Tab>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true }),
        vim.api.nvim_create_user_command('Mark', function ()
            require("harpoon.mark").add_file()
        end, {})
    }
}
