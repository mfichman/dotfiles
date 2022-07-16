#!/usr/bin/env lua

-- Copyright (c) 2022 Matt Fichman <matt.fichman@gmail.com> 
-- 
-- This file is subject to the license terms in the LICENSE.md file found in
-- the top-level directory of this software package. No person may use, copy,
-- modify, publish, distribute, sublicense and/or sell any part of this file
-- except according to the terms contained in the LICENSE.md file.

local cmp = require('cmp')

local function has_words_before()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local function feedkey(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local function complete_next(fallback)
  if cmp.visible() then
    cmp.select_next_item()
  else
    fallback()
  end
end

local function complete_prev(fallback)
  if cmp.visible() then
    cmp.select_prev_item()
  else
    fallback()
  end
end

local function complete_confirm(fallback)
  if cmp.visible() then
    cmp.confirm({select = true})
  --elseif vim.fn["vsnip#available"](1) == 1 then
  ----  feedkey("<Plug>(vsnip-expand-or-jump)", "")
  else
    fallback()
  end
end

cmp.setup{
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end
  },

  sources = cmp.config.sources({
    {name = 'nvim_lsp'}
  }, {
    {name = 'buffer'}
  }),

  mapping = {
    ['<c-j>'] = cmp.mapping(complete_next, {'i', 's'}),
    ['<c-k>'] = cmp.mapping(complete_prev, {'i', 's'}),
    ['<tab>'] = cmp.mapping(complete_confirm, {'i', 's'}),
    --['<tab>'] = cmp.mapping(complete_snip_next, {'i', 's'}),
    --['<s-tab>'] = cmp.mapping(complete_snip_prev, {'i', 's'}),
    --['<cr>'] = cmp.mapping.confirm({select = true}),
  }
}
