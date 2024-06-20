vim.keymap.set('n', '<leader>e', ':Neotree toggle position=right<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':belowright split<CR>', { noremap = true, silent = true })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<Tab>', 'i')

vim.api.nvim_create_user_command('Jq', function()
    vim.cmd("exec '%!jq .'")
end, {})
