require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".git", ".idea", "obj", "bin", "target" },
        path_display = function(_, path)
            local tail = require("telescope.utils").path_tail(path)
            return string.format("%s | %s", tail, vim.fn.fnamemodify(path, ":h"))
        end,
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close
          }
        },
        layout_strategy = 'vertical',
        layout_config = { height = 0.95 },
    },
    pickers = {
        find_files = {
            follow = true
        },
        lsp_references = {
            fname_width = 50,
            show_line = false,
            include_declaration = false
        }
    }
}
require("telescope").load_extension("ui-select")
require('telescope').load_extension("fzf")
