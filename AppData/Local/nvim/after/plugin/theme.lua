vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup({
    integrations = {
        barbar = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "bold" },
                hints = { "bold" },
                warnings = { "bold" },
                information = { "bold" }
            }
        }
    }
})

vim.cmd [[colorscheme catppuccin]]
vim.cmd("let g:lightline = {'colorscheme': 'catppuccin'}")
