-- lua/plugins/lualine.lua

require("lualine").setup({
    options = {
        theme = {
            normal = {
                a = { fg = "#F8F8F2", bg = "#282C34", gui = "bold" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#ABB2BF", bg = "#282C34" },
            },
            insert = {
                a = { fg = "#F8F8F2", bg = "#98C379", gui = "bold" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#ABB2BF", bg = "#282C34" },
            },
            visual = {
                a = { fg = "#F8F8F2", bg = "#E06C75", gui = "bold" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#ABB2BF", bg = "#282C34" },
            },
            replace = {
                a = { fg = "#F8F8F2", bg = "#E5C07B", gui = "bold" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#ABB2BF", bg = "#282C34" },
            },
            command = {
                a = { fg = "#F8F8F2", bg = "#56B6C2", gui = "bold" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#ABB2BF", bg = "#282C34" },
            },
            inactive = {
                a = { fg = "#ABB2BF", bg = "#282C34" },
                b = { fg = "#61AFEF", bg = "#282C34" },
                c = { fg = "#282C34", bg = "#282C34" },
            },
        }
    },
    sections = {
        lualine_c = { { "filename", path = 1 } }
    }
})
