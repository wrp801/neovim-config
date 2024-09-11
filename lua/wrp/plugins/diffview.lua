return {
    "sindrets/diffview.nvim",
    keys = {
        vim.keymap.set('n', '<leader>dvo', ':DiffviewOpen<CR>'),
        vim.keymap.set('n', '<leader>dvc', ':DiffviewClose<CR>')

    }
}
