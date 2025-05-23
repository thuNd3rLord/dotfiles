-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- Close the Buffer
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>', opts) -- New Buffer

-- Keep Last Yankes(Copied) When Pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Copy(Yank) and Paste
vim.keymap.set("v", "<leader>y", '"+y', opts) -- Yank(Copy)
vim.keymap.set("v", "<leader>p", '"+p', opts) -- Paste
