require("gitsigns").setup()
require("nvim_comment").setup()
require("nvim-surround").setup()
require("treesitter-context").setup{}
require("luasnip.loaders.from_snipmate").load({ path = { "./snippets" } })
require("nvim-autopairs").setup{}

local dap = require("dap")
dap.adapters.coreclr = {
    type = 'executable',
    command = 'C:/netcoredbg/netcoredbg',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
    },
}

dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:${port}'},
  }
}

dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}"
  },
  {
    type = "delve",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}"
  },
  -- works with go.mod packages and sub packages 
  {
    type = "delve",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}"
  }
}

require("nvim-dap-virtual-text").setup {}
require("dapui").setup()

require "nvim-treesitter.configs".setup {
    highlight = { enable = true }
}

if vim.fn.has("win32") then
    require "nvim-treesitter.install".compilers = { "clang" }
end

require("lualine").setup {
    sections = {
        lualine_c = {
            { "filename", path = 3 },
            { "lsp_progress" }
        }
    }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter'
    },
    delay = 200
})
