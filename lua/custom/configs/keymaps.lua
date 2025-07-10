local keymap = vim.keymap.set

-- new related mappings
keymap('n', '<leader>nt', ':term<CR>i', { desc = 'Open a terminal in a new buffer' })

-- close related mappings
keymap('n', '<leader>cb', ':bd<CR>', { desc = 'Close the current buffer' })
