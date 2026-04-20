return {
    'dmtrKovalenko/fff.nvim',
    build = function()
        -- this will download prebuild binary or try to use existing rustup toolchain to build from source
        -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
        require("fff.download").download_or_build_binary()
    end,
    -- if you are using nixos
    -- build = "nix run .#release",
    opts = {                    -- (optional)
        debug = {
            enabled = true,     -- we expect your collaboration at least during the beta
            show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
        },
    },
    -- No need to lazy-load with lazy.nvim.
    -- This plugin initializes itself lazily.
    lazy = false,
    keys = {
        {
            "<leader>fh",
            function() require('fff').find_files_in_dir(vim.fn.getcwd()) end,
            desc = 'FFFile search cwd',
        },
        {
            "<leader>fs",
            function() require('fff').find_files_in_dir(vim.fn.expand("%:p:h")) end,
            desc = 'FFFile search',
        },
        {
            "<leader>fc",
            function() require('fff').find_files_in_dir(vim.fn.stdpath("config")) end,
            desc = 'Config FFFile search',
        },
        {
            "<leader>fg",
            function() require('fff').live_grep() end,
            desc = 'LiFFFe grep',
        },
        {
            "<leader>fz",
            function()
                require('fff').live_grep({
                    grep = {
                        modes = { 'fuzzy', 'plain' }
                    }
                })
            end,
            desc = 'Live fffuzy grep',
        },
        {
            "<leader>fw",
            function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end,
            desc = 'Search current word',
        },
        {
            "<leader>fu",
            function()
                require('fff').change_indexing_directory(vim.fn.expand("%:p:h"))
            end,
            desc = 'Update fff base path'
        }
    },
    config = function()
        require('fff').setup({
            base_path = vim.fn.expand("%:p:h")
        })
    end
}
