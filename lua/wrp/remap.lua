vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("n","<leader>wl", "<C-w>l") -- navigate to left split
vim.keymap.set("n","<leader>wh", "<C-w>h") -- navigate to right split
vim.keymap.set("n","<leader>wj", "<C-w>j") -- navigate to bottom split
vim.keymap.set("n","<leader>wk", "<C-w>k") -- navigate to top split

-- remaps for splits
vim.keymap.set("n", "<leader>vs", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>hs", "<C-w>s") -- horizontal split
vim.keymap.set('n', "<leader>cs", "<C-w>q") -- close a split

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
vim.keymap.set("n", "<leader>to", vim.cmd.Trouble)
vim.keymap.set("n", "<leader>tc", vim.cmd.TroubleClose)

-- remap to go to definition in new tab

vim.api.nvim_buf_set_keymap(0, "n", "gD", "<CMD>tab LspDefinition<CR>", {noremap = true, silent = true})


-- for clipboard 
-- copy from clipboard
-- vim.keymap.set('v', '<leader>y', '+y')
-- vim.keymap.set('n', '<leader>Y', '+yg_')
-- vim.keymap.set('n', '<leader>y', '+y')
-- vim.keymap.set('n', '<leader>yy', '+yy')
-- -- paste to clipboard
-- vim.keymap.set('n','<leader>p', '+p')
-- vim.keymap.set('n','<leader>P', '+P')
-- vim.keymap.set('v', '<leader>p', '+p')
-- vim.keymap.set('v', '<leader>P', '+P')
