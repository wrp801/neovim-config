local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
<<<<<<< HEAD
vim.keymap.set('n', '<leader>lds', function () 
    builtin.lsp_document_symbols({symbols = {'class', 'function','method'} }) end)
=======
vim.keymap.set('n', '<leader><C-p>', builtin.lsp_document_symbols,{})
>>>>>>> main
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
