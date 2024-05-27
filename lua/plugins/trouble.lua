return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    vim.keymap.set("n", "<leader>tt", function()
        require("trouble").toggle()
    end);
}
