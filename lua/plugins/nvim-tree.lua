-- lua/plugins/nvim-tree.lua

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Configure nvim-tree
require("nvim-tree").setup({
    view = {
        width = 30,
        side = "left",
    },
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    filters = {
        dotfiles = false, -- Set to true if you want to hide dotfiles
    },
    git = {
        enable = true,
    },
    actions = {
        open_file = {
            quit_on_open = false,
            resize_window = true,
        },
    },
})
