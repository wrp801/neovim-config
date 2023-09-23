vim.g.mapleader = " "
-- vim.keymap.set("n","<leader>pv", vim.cmd.Ex) -- not needed with file tree
vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighted search results
vim.keymap.set("n", "x", '"_x') -- won't copy the deleted character into a register

-- remaps for splits
vim.keymap.set("n", "<leader>vs", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>hs", "<C-w>s") -- horizontal split
vim.keymap.set('n', "<leader>sx", ":close<CR>") -- close a split
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width

-- remaps for tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
-- vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

-- remaps for buffers
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferNext)
vim.keymap.set("n","<leader>bp", vim.cmd.BufferPrevious)
vim.keymap.set("n", '<leader>bc', vim.cmd.BufferClose)
vim.keymap.set("n","<leader>bl", vim.cmd.ls)
vim.keymap.set("n", "<leader>bb", vim.cmd.BufferOrderByBufferNumber)
vim.keymap.set("n", "<leader>bd", vim.cmd.BufferOrderByDirectory)
vim.keymap.set("n", "<leader>bl", vim.cmd.BufferOrderByLanguage)
vim.keymap.set("n", "<leader>bw", vim.cmd.BufferOrderByWindow)

-- remap for neogen
vim.keymap.set("n", "<leader>ng", vim.cmd.Neogen)

-- remap for trouble
-- vim.keymap.set("n", "<leader>to", vim.cmd.Trouble)
-- vim.keymap.set("n", "<leader>tc", vim.cmd.TroubleClose)

-- remap to go to definition in new tab
vim.api.nvim_buf_set_keymap(0, "n", "gD", "<CMD>tab LspDefinition<CR>", {noremap = true, silent = true})

-- vim-maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>nff", ":NvimTreeFindFile<CR>") -- find file in file tree

-- trouble remaps
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)


-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>lds', function () 
    builtin.lsp_document_symbols({symbols = {'class', 'function','method', 'struct', 'enum'} }) end)
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)


