local io = require('io')
local os = require('os')

-- Search backwards to find the .skeleton file for the project. If no
-- skeleton is found, then use the default one from .vim
local function find_skeleton_file(ext)
  local file = vim.fn.expand('%')
  local dir = file:match('(.+)/.-$')
  local date = os.date('*t')
  while dir do
    local path = dir..'/.skeleton.'..ext
    local fd = io.open(path)
    if fd then
      fd:close()
      return path
    else
      dir = dir:match('(.+)/.-$')
    end
  end
  return (os.getenv('HOME') or os.getenv('USERPROFILE'))..'/.vim/skeleton/'..ext
end

-- Set the current buffer with the contents of the skeleton file.
function skeleton(ext)
  local path = find_skeleton_file(ext)
  local fd = io.open(path)
  local date = os.date('*t')

  local lines = {}

  for line in fd:lines() do
    local line = line:gsub('%%year', date.year)
    table.insert(lines, line)
  end

  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
  vim.cmd('$')
end
