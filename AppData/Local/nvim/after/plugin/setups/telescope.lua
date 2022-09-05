require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".git", ".idea", "obj", "bin" },
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close
          }
        }
    }
}
require("telescope").load_extension("ui-select")
require('telescope').load_extension("fzf")
