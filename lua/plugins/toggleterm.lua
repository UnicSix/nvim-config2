return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            shell = "/bin/zsh",
            direction = 'vertical',
            open_mapping = [[<c-t]],
            shade_filetype = {},
            -- highlights = require("rose-pine.plugins.toggleterm")
        })
        vim.keymap.set('n', '<C-p>', ':ToggleTerm direction=vertical size=60<CR>',
            { noremap = true })
        vim.keymap.set('n', '<C-n>', ':ToggleTerm direction=horizontal size=10<CR>',
            { noremap = true })
        vim.keymap.set('n', '<C-f>', ':ToggleTerm direction=float<CR>',
            { noremap = true })
        vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
    end
}
