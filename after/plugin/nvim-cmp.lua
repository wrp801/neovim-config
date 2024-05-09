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
            ["<Tab>"] = cmp.mapping(function(fallback)
                if require("copilot.suggestion").is_visible() then
                    require("copilot.suggestion").accept()
                elseif cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
                elseif luasnip.expandable() then
                    luasnip.expand()
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, {
            "i",
            "s",
        }),
        -- ["<Tab>"] = cmp.config.disable,
        -- ["<CR>"] = cmp.config.disable
    },

    -- You should specify your *installed* sources.
    sources = {
        { name = "nvim_lsp" },

    },
})

end
