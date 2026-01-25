local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugins.mason"),
    require("plugins.lspconfig"),
    require("plugins.oil"),
    require("plugins.snacks"),
    require("plugins.tiny_diagnotic"),
    require("plugins.nvim_cmp"),
    require("plugins.trouble"),
    {
        'paulo-granthon/hyper.nvim',
        config = function()
            require('hyper').load()
        end
    },
    {
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end
    },
    {
        'nyoom-engineering/oxocarbon.nvim',
    },
    { 
        'alexghergh/nvim-tmux-navigation',
        config = function()
            require'nvim-tmux-navigation'.setup({})
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    }
})
