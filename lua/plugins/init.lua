-- lua/plugins/init.lua

-- Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "nvim-lualine/lualine.nvim", config = function() require("plugins.lualine") end },
    { 
        "tjdevries/colorbuddy.nvim", 
        config = function() require("plugins.colorbuddy") end 
    },
    { 
        "lalitmee/cobalt2.nvim", 
        requires = "tjdevries/colorbuddy.nvim" 
    },
    { "williamboman/mason.nvim", config = function() require("plugins.mason") end },
    "tpope/vim-surround",

    -- LSP and tools
    "neovim/nvim-lspconfig",            -- LSP configurations
    "williamboman/mason.nvim",          -- LSP manager
    "williamboman/mason-lspconfig.nvim", -- Helper for auto setting up LSP servers

    -- Alpha welcome screen
    { "goolord/alpha-nvim", config = function() require("plugins.alpha") end },

    -- Telescope for fuzzy search and grep
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = function() require("plugins.telescope") end },

    -- Markdown preview
    { "iamcco/markdown-preview.nvim", build = "cd app && npm install" },

    -- Debugging (DAP)
    "mfussenegger/nvim-dap",
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
    "mfussenegger/nvim-dap-python",   -- DAP for Python

    -- nvim-nio dependency
    "nvim-neotest/nvim-nio",

    -- Linter and Formatter
    "jose-elias-alvarez/null-ls.nvim"
})

-- Load LSP configurations
require("plugins.lsp")

-- Load DAP configurations
require("plugins.dap")

-- Load null-ls configuration
require("plugins.null-ls")
