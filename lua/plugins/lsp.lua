-- lua/plugins/lsp.lua

local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Setup Mason for managing LSP servers
mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        "pyright",        -- Python
        "intelephense",   -- PHP
        "ts_ls",          -- JavaScript and TypeScript
        "html",           -- HTML
        "cssls",          -- CSS
        "sqlls"           -- SQL
    }
})

-- Language-specific server configurations
local servers = {
    pyright = {},
    intelephense = {},
    ts_ls = {},
    html = {},
    cssls = {},
    sqlls = {}
}

-- Setup each LSP server
for server, config in pairs(servers) do
    lspconfig[server].setup(config)
end
