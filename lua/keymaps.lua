vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.keymap.set('n', '<M-S-j>', ':resize -3<CR>', { silent = true })
-- vim.keymap.set('n', '<M-S-k>', ':resize +3<CR>', { silent = true })
-- vim.keymap.set('n', '<M-S-l>', ':vertical resize -5<CR>', { silent = true })
-- vim.keymap.set('n', '<M-S-h>', ':vertical resize +5<CR>', { silent = true })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<Enter>', 'o<Esc>')
vim.keymap.set('n', '<leader>ff', function()
    vim.lsp.buf.format()
end, { desc = "Format File" })

