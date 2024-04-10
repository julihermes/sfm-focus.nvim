local api = require "sfm.api"

local M = {}

--- focus the exlorer window
function M.focus()
  if api.explorer.is_open() then
    api.explorer.close()
    api.explorer.toggle()

    return
  end

  api.explorer.toggle()
end

function M.setup()
  vim.api.nvim_create_user_command("SFMFocus", function()
    M.focus()
  end, {
    bang = true,
    nargs = "*",
  })
end

return M
