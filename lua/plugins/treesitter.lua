return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
    },
    config = function(_, opts)
        require'nvim-treesitter.config'.setup (opts)
    end
}
