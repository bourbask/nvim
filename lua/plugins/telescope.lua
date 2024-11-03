-- lua/plugins/telescope.lua

local telescope = require("telescope")
telescope.setup({
    defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        },
        live_grep = {
            theme = "dropdown",
        },
    },
})
