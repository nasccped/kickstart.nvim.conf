local function tab_style()
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'java',
    callback = function()
      -- setting tab settings for Java files
      vim.bo.expandtab = true -- Use spaces instead of tabs
      vim.bo.tabstop = 4 -- Width of tab character
      vim.bo.softtabstop = 4 -- Number of spaces inserted for a tab
      vim.bo.shiftwidth = 4 -- Number of spaces for autoindent
    end,
  })
end

tab_style()
