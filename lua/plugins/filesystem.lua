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
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = true,
                },
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        ".git",
                    },
                },
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
        vim.keymap.set('n', '<leader>²', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true }), 
        vim.api.nvim_create_user_command('Mark', function ()
            require("harpoon.mark").add_file()
        end, {})
    }
}
