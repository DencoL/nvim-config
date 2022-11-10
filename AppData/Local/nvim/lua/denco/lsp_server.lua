local M = {}

local lspconfig = require("lspconfig")
local lsp_signature = require("lsp_signature")
local illuminate = require("illuminate")
local nnoremap = require("denco.keymap").nnoremap

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local border = {
    { "╭", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╮", "FloatBorder" },
    { "│", "FloatBorder" },
    { "╯", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╰", "FloatBorder" },
    { "│", "FloatBorder" },
}

local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border})
}

function M.setup_server(server_name, cmd, other_settings, skipIlluminate)
    local server = lspconfig[server_name]

    local setup = {
        cmd = cmd or server.document_config.default_config.cmd,
        capabilities = capabilities,
        handlers = handlers,
        on_attach = function(client, bufnr)
            print("lsp connected")
            lsp_signature.on_attach(lsp_signature, bufnr)
            if skipIlluminate == nil then
                illuminate.on_attach(client)
            end
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
