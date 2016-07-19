#!/bin/env lua

local io = require('io')
local os = require('os')

-- Search backwards to find the .skeleton file for the project. If no 
-- skeleton is found, then use the default one from .vim
local function findSkeletonFile(ext)
  local file = vim.buffer().fname
  local dir = file:match('(.+)/.-$')
  local date = os.date('*t')
  while dir do
    local path = dir..'/.skeleton.'..ext
    local fd = io.open(path)
    if fd then
      fd.close()
      return path
    else
      dir = dir:match('(.+)/.-$')
    end
  end
  return os.getenv('HOME')..'/.vim/skeleton/'..ext
end

-- Set the current buffer with the contents of the skeleton file.
function skeleton(ext)
  local path = findSkeletonFile(ext)
  local buffer = vim.buffer()
  local fd = io.open(path) 
  local date = os.date('*t')
  for line in fd:lines() do
    local line = line:gsub('%%year', date.year)
    buffer:insert(line)
  end
  buffer[1] = nil
  vim.command('$')
end
