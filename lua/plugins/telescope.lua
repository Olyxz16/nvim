return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader><Tab>", builtin.find_files, {})
      vim.keymap.set("n", "<leader><leader>", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader>p", ":Telescope neovim-project discover<CR>", {})
      require("telescope").load_extension("ui-select")
    end,
  },
}
