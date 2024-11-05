-- lua/plugins/colorbuddy.lua

local cb = require("colorbuddy")

vim.notify("--------------Colorbuddy loaded ---------------------")
cb.colorscheme("cobalt2")
vim.cmd("colorscheme cobalt2")
vim.notify("---------- Cobalt2 applied --------------")
