vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
vim.g.mapleader = " " 

vim.opt.wildmode=longest,list

-- backspace 
vim.opt.backspace = "indent,eol,start"

-- system clipboard 
-- vim.api.nvim_set_option('clipboard', 'unnamed')
vim.opt.clipboard:append("unnamedplus")

-- aesthetics
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true


