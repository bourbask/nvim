-- lua/plugins/null-ls.lua

local null_ls = require("null-ls")

-- Define formatters and linters
null_ls.setup({
    sources = {
        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8,

        -- PHP
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.diagnostics.phpcs,

        -- JavaScript/TypeScript
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,

        -- HTML/CSS
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.stylelint,

        -- SQL
        null_ls.builtins.formatting.sql_formatter,
        null_ls.builtins.diagnostics.sqlfluff.with({
            extra_args = { "--dialect", "mysql" }  -- adjust dialect as needed
        })
    }
})
