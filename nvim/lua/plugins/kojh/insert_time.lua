local M = {}


function M.insert_current_time(format)
  format = format or "%Y-%m-%d %H:%M:%S"
  local current_time = os.date(format)
  vim.api.nvim_put({current_time}, 'c', true, true)
end

return M
