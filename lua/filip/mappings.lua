vim.g.mapleader = " "

vim.keymap.set('n', '<leader>ch', function() vim.api.nvim_command('WhichKey')end)
