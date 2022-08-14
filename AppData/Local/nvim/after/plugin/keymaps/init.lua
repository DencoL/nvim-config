local nnoremap = require("denco.keymap").nnoremap

nnoremap("<leader>e", ":Ex<CR>")
nnoremap("<leader>ll", ":LazyGit<CR>")
nnoremap("<leader>li", ":LspInfo<CR>")
nnoremap("<C-j>", "<esc>:m .+1<CR>==")
nnoremap("<C-k>", "<esc>:m .-2<CR>==")
nnoremap("K", "<cmd>lua vim.lsp.bug.hover()<CR>")

-- Diagnostics
nnoremap("<leader>E", "<cmd> lua vim.diagnostic.open_float()<CR>")
nnoremap("ge", "<cmd> lua vim.diagnostic.goto_next()<CR>")
nnoremap("gE", "<cmd> lua vim.diagnostic.goto_prev()<CR>")
nnoremap("grr", "<cmd> lua vim.diagnostic.goto_prev()<CR>")
nnoremap("grr", "<cmd>lua vim.lsp.codelens.refresh()<CR>")
