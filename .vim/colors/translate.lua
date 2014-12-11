

function cterm(hex)
  local fd = io.popen('python colortrans.py '..hex)
  return fd:read()
end

local fd = io.open('github.vim')
for line in fd:lines() do
  local line = line:gsub('guifg=#([0-9A-Fa-f]+)', function(arg)
    return 'ctermfg='..cterm(arg)
  end)

  local line = line:gsub('guibg=#([0-9A-Fa-f]+)', function(arg)
    return 'ctermbg='..cterm(arg)
  end)
  print(line)
end
