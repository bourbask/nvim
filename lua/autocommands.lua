-- lua/autocommands.lua

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.lua",
    command = "source %",
    desc = "Reload Lua file on save"
})
