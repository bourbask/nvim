-- Setting up Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-lualine/lualine.nvim" },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
      dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "lalitmee/cobalt2.nvim",
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
        require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  { "tpope/vim-surround" },
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
  { "jay-babu/mason-null-ls.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "neovim/nvim-lspconfig" },
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "intelephense", "sqlls", "ts_ls" },
})

local lspconfig = require("lspconfig")
lspconfig.intelephense.setup {}
lspconfig.sqlls.setup {}
lspconfig.ts_ls.setup {}

require("mason-null-ls").setup({
  ensure_installed = { "phpcs", "phpcbf", "eslint", "prettier" },
  automatic_installation = true,
})

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.diagnostics.phpcs,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
  }
})
