local saga = require("lspsaga")

saga.init_lsp_saga({
    code_action_num_shortcut = true,
    code_action_lightbulb = {
        enable = false,
        enable_in_insert = false,
        cache_code_action = true,
        sign = true,
        update_time = 150,
        sign_priority = 20,
        virtual_text = true,
    },
    code_action_keys = {
        quit = '<ESC>',
        exec = '<CR>'
    },
    rename_action_quit = '<ESC>',
    rename_in_select = false
})
