local M = {}

local lspconfig = require("lspconfig")
local lsp_signature = require("lsp_signature")
local nnoremap = require("denco.keymap").nnoremap

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

function M.setup_server(server_name, cmd, other_settings)
    local server = lspconfig[server_name]

    local setup = {
        cmd = cmd or server.document_config.default_config.cmd,
        capabilities = capabilities,
        on_attach = function(_, bufnr)
            print("lsp connected")
            lsp_signature.on_attach(lsp_signature, bufnr)
            nnoremap('<leader>rn', vim.lsp.buf.rename)
            nnoremap('<leader>a', vim.lsp.buf.code_action)
            nnoremap('<leader>cf', vim.lsp.buf.formatting)
        end
    }

    if other_settings == nil then
        server.setup(setup)
    else
        server.setup(vim.tbl_extend("force", setup, other_settings))
    end
end

return M
