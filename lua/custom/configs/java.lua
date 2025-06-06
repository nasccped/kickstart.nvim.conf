local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'java',
    callback = function()
      -- setting tab settings for Java files
      vim.bo.expandtab = true -- Use spaces instead of tabs
      vim.bo.tabstop = 4 -- Width of tab character
      vim.bo.softtabstop = 4 -- Number of spaces inserted for a tab
      vim.bo.shiftwidth = 4 -- Number of spaces for autoindent

      -- converting existing tabs to spaces on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = 0,
        callback = function()
          -- Only convert if expandtab is enabled
          if vim.bo.expandtab then
            -- Save cursor position
            local cursor_pos = vim.api.nvim_win_get_cursor(0)
            -- Replace all tabs with spaces in the entire file
            vim.cmd [[%s/\t/    /g]]
            -- Restore cursor position
            vim.api.nvim_win_set_cursor(0, cursor_pos)
          end
        end,
      })
    end,
  })
end

return M
