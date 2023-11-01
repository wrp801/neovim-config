
vim.keymap.set("n", "<leader>zm", function()
    require("zen-mode").setup {
        window = {
            width = 180,
            options = { }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
end)


vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").setup {
        window = {
            width = 150,
            options = { }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.wo.number = false
    vim.wo.rnu = false
    vim.opt.colorcolumn = "0"
end)
