local nnoremap = require("denco.keymap").nnoremap

nnoremap("<leader>e", ":Ex<CR>")
nnoremap("<leader>ll", ":LazyGit<CR>")
nnoremap("<leader>li", ":LspInfo<CR>")
nnoremap("<C-j>", "<esc>:m .+1<CR>==")
nnoremap("<C-k>", "<esc>:m .-2<CR>==")
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")

nnoremap("<leader>E", "<cmd> lua vim.diagnostic.open_float()<CR>")
nnoremap("ge", "<cmd> lua vim.diagnostic.goto_next()<CR>")
nnoremap("gE", "<cmd> lua vim.diagnostic.goto_prev()<CR>")
nnoremap("grr", "<cmd>lua vim.lsp.codelens.refresh()<CR>")

nnoremap("<leader>cac", "<cmd>lua require('denco.csharp_helpers').add_class()<CR>")
nnoremap("<leader>p", '"0p<CR>');
nnoremap("<leader>P", '"0P<CR>');

nnoremap("<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
nnoremap("<leader>dd", "<cmd>lua require('dap').continue()<CR>")

nnoremap("<leader>hs", "*``")
nnoremap("<leader>hr", ":noh<CR>")
