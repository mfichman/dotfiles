if vim.g.gui then
  vim.g.airline_theme = 'base16'
  --vim.g.airline_powerline_fonts = 1
  --vim.g.airline_left_alt_sep = ""
  --vim.g.airline_right_alt_sep = ""
end

vim.g.airline_powerline_fonts = 0

vim.g.airline_section_z = '%p%% %#__accent_bold#%{g:airline_symbols.linenr}%l/%L%#__restore__#:%02v'

vim.g.airline_mode_map = {
    ['__']     = '-',
    ['c']      = 'C',
    ['i']      = 'INSERT',
    ['ic']     = 'INSERT',
    ['ix']     = 'INSERT',
    ['n']      = 'NORMAL',
    ['multi']  = 'MULTI',
    ['ni']     = 'NORMAL',
    ['no']     = 'NORMAL',
    ['R']      = 'REPLACE',
    ['Rv']     = 'REPLACE',
    ['s']      = 'SUB',
    ['S']      = 'SUB',
    ['']     = 'SUB',
    ['t']      = 'TERM',
    ['v']      = 'VISUAL',
    ['V']      = 'VISUAL',
    ['']     = 'VISUAL',
}

vim.g.airline_symbols = {
  maxlinenr = ' ',
  spell =  '',
  notexists =  '',
  branch =  '',
  branch =  '',
  readonly =  '',
  linenr =  '',
  whitespace =  '',
}
