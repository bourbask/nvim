-- lua/plugins/alpha.lua

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "Welcome to Neovim",
    "Your custom LSP setup",
}

-- Menu buttons
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
    dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
    dashboard.button("p", "  Projects", ":Telescope projects<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
