require('options')
require('keymaps')
require('plugins.lazy')
require('color')
vim.keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', '<Cmd>NvimTmuxNavigateLastActive<CR>', { silent = true })
vim.keymap.set('n', '<C-Space>', '<Cmd>NvimTmuxNavigateNext<CR>', { silent = true })

-- TODO 
-- float term
-- treesitter (cpp file highlight)
