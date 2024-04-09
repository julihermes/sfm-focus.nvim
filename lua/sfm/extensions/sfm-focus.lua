local api = require "sfm.api"

local M = {}

--- focus the exlorer window
function M.focus()
  if not api.explorer.is_open() then
    api.explorer.toggle()

    return
  end

  -- get current file path
  local fpath = vim.api.nvim_buf_get_name(0)
  -- open explorer window
  -- M._view:open()
  api.explorer.close()
  api.explorer.open()
  -- reload and render the explorer tree
  api.explorer.reload()
  -- focus the current file
  api.navigation.focus(fpath)
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
