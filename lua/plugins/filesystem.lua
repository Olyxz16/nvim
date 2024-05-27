local projects = {
    "!~/.config/*",
    "~/Appdata/Local/nvim/",
    "~/Desktop/Poker/",
    "~/Desktop/InkBodyArt"
}
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
        "coffebar/neovim-project",
        opts = {
            projects = projects,
            last_session_on_startup = false,
        },
        init = function()
            vim.opt.sessionoptions:append("globals")
        end,
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" },
            { "Shatur/neovim-session-manager" },
        },
        priority = 100
    },
    {
        "stevearc/oil.nvim",
        config = function()
            local oil = require("oil")
            oil.setup()
            vim.keymap.set("n", "-", oil.toggle_float, {})
        end,
    }
}
