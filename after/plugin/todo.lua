require('todo-comments').setup()

vim.keymap.set('n', '<leader>tt', ':TodoTelescope<CR>', {desc = "List of TODO's in telescope format"})
vim.keymap.set('n', '<leader>tx', ':TodoTrouble<CR>', {desc = 'List of trouble items'})
