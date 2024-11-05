-- lua/plugins/lualine.lua

local custom_cobalt2 = {
  normal = {
    a = { fg = '#000000', bg = '#ffc600', gui = 'bold' },
    b = { fg = '#ffffff', bg = '#2d2d2d' },
    c = { fg = '#ffffff', bg = '#1e1e1e' },
  },
  insert = { a = { fg = '#000000', bg = '#00ffcc', gui = 'bold' } },
  visual = { a = { fg = '#000000', bg = '#6699ff', gui = 'bold' } },
  replace = { a = { fg = '#ffffff', bg = '#ff3333', gui = 'bold' } },
  command = { a = { fg = '#000000', bg = '#ffcc00', gui = 'bold' } },
  inactive = {
    a = { fg = '#808080', bg = '#1e1e1e' },
    b = { fg = '#808080', bg = '#1e1e1e' },
    c = { fg = '#808080', bg = '#1e1e1e' },
  },
}

require('lualine').setup({
  options = {
    theme = custom_cobalt2,
    section_separators = '',
    component_separators = '|',
  },
})
