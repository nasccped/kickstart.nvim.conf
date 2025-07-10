local keymap = vim.keymap.set

-- new related mappings
keymap('n', '<leader>ns', ':term<CR>i', { desc = 'Open a new shell (terminal) in the current tab' })

-- close related mappings
keymap('n', '<leader>cb', ':bd<CR>', { desc = 'Close the current buffer' })
