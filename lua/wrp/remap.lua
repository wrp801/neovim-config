vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("n","<leader>l", "<C-w>l") -- navigate to left split
vim.keymap.set("n","<leader>h", "<C-w>h") -- navigate to right split
vim.keymap.set("n","<leader>j", "<C-w>j") -- navigate to bottom split
vim.keymap.set("n","<leader>k", "<C-w>k") -- navigate to top split
vim.keymap.set("n","<leader>q", vim.cmd.q) -- close buffer

-- remaps for splits
vim.keymap.set("n", "<leader>vs", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>hs", "<C-w>s") -- horizontal split
