require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".git", ".idea", "obj", "bin" },
        path_display = function(_, path)
            local tail = require("telescope.utils").path_tail(path)
            return string.format("%s | %s", tail, vim.fn.fnamemodify(path, ":h"))
        end,
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close
          }
        }
    }
}
require("telescope").load_extension("ui-select")
require('telescope').load_extension("fzf")
