local dap = require('dap')
local dapui = require('dapui')

dap.adapters.codelldb = {
  type = 'server',
  port = 13000,
  executable = {
    command = '/Users/nikitaulybin/Documents/codelldb/extension/adapter/codelldb',
    args = {"--port", "13000"},
  }
}

dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    env = {
      DYLD_LIBRARY_PATH="/Users/nikitaulybin/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/aarch64-apple-darwin/lib"
    }
  }
}

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
