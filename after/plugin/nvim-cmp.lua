local cmp = require("cmp")
config = function()
    cmp.setup({

        completion = {
            completeopt = "menu,menuone,noselect",
        },

        -- You must set mapping.
        mapping = {
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.close(),
        },

        -- You should specify your *installed* sources.
        sources = {
            { name = "nvim_lsp" },
        },
    })

end
