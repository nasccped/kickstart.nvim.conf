local keymap = vim.keymap.set

keymap('n', '<leader>nt', ':term<CR>i', { desc = 'Open a terminal in a new buffer' })
keymap('n', '<leader>cb', ':bd<CR>', { desc = 'Close the current buffer' })
