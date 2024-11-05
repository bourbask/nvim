-- lua/keymaps.lua

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local dap = require("dap")

vim.g.mapleader = " "

-- General keymaps
map("n", "<Leader>w", ":w<CR>", opts)                   -- Save with <Leader>w
map("n", "<Leader>q", ":q<CR>", opts)                   -- Quit with <Leader>q
map("n", "<Leader>e", ":Ex<CR>", opts)                  -- Open file explorer with <Leader>e

-- Keymaps for Alpha and Telescope
map("n", "<leader>h", ":Alpha<CR>", opts)               -- Open Alpha dashboard
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)  -- File search
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)   -- Grep search

-- Keymaps for DAP
map("n", "<F5>", "<Cmd>lua dap.continue()<CR>", opts)
map("n", "<F10>", "<Cmd>lua dap.step_over()<CR>", opts)
map("n", "<F11>", "<Cmd>lua dap.step_into()<CR>", opts)
map("n", "<F12>", "<Cmd>lua dap.step_out()<CR>", opts)
map("n", "<leader>db", "<Cmd>lua dap.toggle_breakpoint()<CR>", opts)
map("n", "<leader>dr", "<Cmd>lua dap.repl.open()<CR>", opts)
map("n", "<leader>du", "<Cmd>lua require('dapui').toggle()<CR>", opts)
