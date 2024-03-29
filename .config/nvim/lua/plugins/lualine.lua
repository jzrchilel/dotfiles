local gps = require('nvim-gps')

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_dark',
    component_separators = '',
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {{'mode', lower = false}},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename', { gps.get_location, cond = gps.is_available }},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  -- tabline = {},
  extensions = { 'nvim-tree' }
}


