local keymap = vim.keymap.set

-- new related mappings
keymap('n', '<leader>ns', ':term<CR>i', { desc = 'Open a new shell (terminal) in the current tab' })
keymap('n', '<leader>nt', ':tabnew<CR>', { desc = 'Open a new tab' })

-- close related mappings
keymap('n', '<leader>cb', ':bp|bd#<CR>', { desc = "Close the current buffer (don't close the tab)" })
keymap('n', '<leader>ct', ':tabclose<CR>', { desc = 'Close the current tab' })

-- tab-moving related mappings
keymap('n', '<Tab>', ':tabnext<CR>', { desc = 'Move to the next open tab' })
keymap('n', '<S-Tab>', ':tabprevious<CR>', { desc = 'Move to the previous open tab' })
