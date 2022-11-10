local nnoremap = require("denco.keymap").nnoremap

nnoremap("<leader>di", "<cmd>lua require('dapui').toggle()<CR>")

nnoremap("<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
nnoremap("<leader>dd", "<cmd>lua require('dap').continue()<CR>")
nnoremap("<F11>", "<cmd>lua require('dap').step_over()<CR>")
