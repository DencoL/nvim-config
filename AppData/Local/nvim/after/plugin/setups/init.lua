require("gitsigns").setup()
require("nvim_comment").setup()

require"nvim-treesitter.configs".setup {
    highlight = { enable = true }
}

require "nvim-treesitter.install".compilers = { "clang" }

require("lualine").setup {
    sections = {
        lualine_c = {
            { "filename", path = 3 },
            { "lsp_progress" }
        }
    }
}
