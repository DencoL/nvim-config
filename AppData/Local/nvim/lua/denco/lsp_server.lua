local M = {}

local nvim_lsp = require("lspconfig")
local lsp_signature = require("lsp_signature")
local nnoremap = require("denco.keymap").nnoremap

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

function M.setup_server(server_name, cmd, settings)
    local server = nvim_lsp[server_name]
    server.setup {
        cmd = cmd or server.document_config.default_config.cmd,
        capabilities = capabilities,
        on_attach = function(_, bufnr)
            lsp_signature.on_attach(lsp_signature, bufnr)
            nnoremap('<leader>rn', vim.lsp.buf.rename)
            nnoremap('<leader>a', vim.lsp.buf.code_action)
        end,
        settings = settings or server.document_config.default_config.settings
    }

    return server
end

return M
