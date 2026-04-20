return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
    config = function()
        require("mason").setup()

        vim.lsp.config["clangd"] = {
            cmd = { "clangd" },
            filetypes = { "c", "cpp", "h", "hpp", "cc" },
            root_markers = { ".clangd", ".git" },
        }
        vim.lsp.config["lua_ls"] = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"}
                    },
                    completion = {
                        callSnippet = "Replace"
                    },
                },
            }
        }

        vim.lsp.enable("clangd")
        vim.lsp.enable("lua_ls")
    end,
}

