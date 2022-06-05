local dap = require("dap")

dap.configurations.lua = {{
  type = "nlua",
  request = "attach",
  name = "Attach to running Neovim instance",
  host = function ()
    local value = vim.fn.input("Host [127.0.0.1]: ")
    if value ~= "" then
      return value
    end
    return "127.0.0.1"
  end,
  port = function ()
    local val = tonumber(vim.fn.input("Port: "))
    assert(val, "Please provide a port number")
    return val
  end
}}

dap.adapters.nlua = function (callback, config)
  callback({type = "server", host = config.host, port = config.port})
end

-- setup func looks for path to debugpy installation 
require("dap-python").setup("/Users/waydegg/ghq/github.com/waydegg/rudder-backend/venv/bin/python")