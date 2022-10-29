-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#24283b',
  white  = '#ffffff',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#32374c',
  insert = '#00FFAB',
  visual = '#FFCA03',
  replace = '#FF008E',
  normal = '#4649FF'
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = colors.normal },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.insert } },
  visual = { a = { fg = colors.black, bg = colors.visual } },
  replace = { a = { fg = colors.whive, bg = colors.replace } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

local sections = {
  lualine_a = {
    { 'mode', separator = { left = '' }, right_padding = 2 },
  },
  lualine_b = {
    {
      'filename',
      symbols = {
        modified = ' ●',      -- Text to show when the buffer is modified
        alternate_file = '#', -- Text to show to identify the alternate file
        directory =  '',     -- Text to show when the buffer is a directory
      },
    },
    'branch',
  },
  lualine_c = { 'filename' },
  lualine_x = { 'fileformat' },
  lualine_y = { 'filetype', 'encoding' },
  lualine_z = {
    { 'location', separator = { right = '' }, left_padding = 2 },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = { left = '->', right = '<-' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      'NvimTree',
      'Trouble'
    }
  },
  sections = sections,
  inactive_sections = sections,
  tabline = {},
  extensions = {},
}
