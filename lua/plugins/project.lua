return {
    "coffebar/neovim-project",
    opts = {
        projects = {
            "!~/.config/*",
            "~/Appdata/Local/nvim/",
            "~/Desktop/Poker/"
        },
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
}
