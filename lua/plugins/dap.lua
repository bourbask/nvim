-- lua/plugins/dap.lua

local dap = require("dap")
local dapui = require("dapui")

-- Setup dap-ui
dapui.setup()

-- Enable DAP UI automatically on DAP events
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

-- Python DAP setup
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")  -- Adjust path to debugpy if necessary

-- JavaScript and TypeScript (Node.js) DAP configuration
dap.adapters.node2 = {
    type = "executable",
    command = "node",
    args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}

dap.configurations.javascript = {
    {
        type = "node2",
        request = "launch",
        program = "${file}",
        pythonPath = function()
            return "/usr/bin/python3"
        end,
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        console = "integratedTerminal",
    },
}

-- PHP DAP configuration (using Xdebug)
dap.adapters.php = {
    type = "executable",
    command = "php-debug-adapter",
}

dap.configurations.php = {
    {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug",
        port = 9003,
    },
}
