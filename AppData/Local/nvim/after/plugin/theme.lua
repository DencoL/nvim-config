vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup({
    integrations = {
        barbar = true,
        native_lsp = {
            enabled = true
        }
    }
})

vim.cmd [[colorscheme catppuccin]]
vim.cmd("let g:lightline = {'colorscheme': 'catppuccin'}")
vim.cmd [[highlight LineNr guifg=#5b5d76]]
