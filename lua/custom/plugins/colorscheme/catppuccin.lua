return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    color_overrides = {
      mocha = {
        base = '#000000',
        mantle = '#000000',
        crust = '#000000',
      },
    },
    highlight_overrides = {
      mocha = function(colors)
        return {
          BlinkCmpMenu = { fg = colors.text, bg = '#000000' },
          BlinkCmpMenuBorder = { fg = colors.text, bg = '#000000' },
          BlinkCmpItemAbbr = { fg = colors.text },
          BlinkCmpItemAbbrMatch = { fg = colors.blue, bold = true },
          BlinkCmpItemKind = { fg = colors.teal },
          BlinkCmpItemMenu = { fg = colors.overlay2 },
        }
      end,
    },
  },
}
