vim.g.mapleader = " "

-- WhichKey mappings
vim.keymap.set('n', '<leader>ch', function() vim.api.nvim_command('WhichKey')end)

-- NeoTree mappings
vim.keymap.set('n', '<leader>e', function() vim.api.nvim_command('NeoTreeFocus') end)


