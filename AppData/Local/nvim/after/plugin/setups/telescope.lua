require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".git", ".idea", "obj", "bin" },
        path_display = { "tail" },
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close
          }
        }
    }
}
require("telescope").load_extension("ui-select")
