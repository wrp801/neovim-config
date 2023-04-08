vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("n","<leader>wl", "<C-w>l") -- navigate to left split
vim.keymap.set("n","<leader>wh", "<C-w>h") -- navigate to right split
vim.keymap.set("n","<leader>wj", "<C-w>j") -- navigate to bottom split
vim.keymap.set("n","<leader>wk", "<C-w>k") -- navigate to top split
vim.keymap.set("n","<leader>q", vim.cmd.q) -- close buffer

-- remaps for splits
vim.keymap.set("n", "<leader>vs", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>hs", "<C-w>s") -- horizontal split

-- remaps for buffers
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("n","<leader>bb", vim.cmd.bprev)
vim.keymap.set("n","<C-w>", vim.cmd.bd)
vim.keymap.set("n","<leader>bl", vim.cmd.ls)

-- remap for neogen
vim.keymap.set("n", "<leader>ng", vim.cmd.Neogen)

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
