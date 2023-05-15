local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()
-- this was added per the bootstrapping docs in github


-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- color schemes
    use { "EdenEast/nightfox.nvim", as = 'nightfox',
    use {"ellisonleao/gruvbox.nvim"},
    use {"olimorris/onedark.nvim"},
    use {'sainnhe/sonokai'},
    use({ 'rose-pine/neovim', as = 'rose-pine' }),
    use {'sainnhe/everforest', as = 'everforest'}
    --	config = function() vim.cmd('colorscheme nightfox') end
}
use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}
-- use 'ThePrimeagen/harpoon' -- for hopping between files
use 'mbbill/undotree'
use 'tpope/vim-fugitive' -- for git stuff
use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
}

-- new language support
-- use 'neovim/nvim-lsp'
use 'JuliaEditorSupport/julia-vim' -- julia language

-- for aesthetics
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'
-- for comments 
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
-- for annotation generation
use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
}
use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

-- file tree 
-- use {
    -- 'nvim-tree/nvim-tree.lua',
    -- requires = {
        -- 'nvim-tree/nvim-web-devicons', -- optional, for file icons
        -- },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
        -- }

        -- This is the julia language server setup copied from the github here https://github.com/julia-vscode/LanguageServer.jl/wiki/Vim-and-Neovim
        -- use({ 
        --     "hrsh7th/nvim-cmp",
        --     requires = { { "hrsh7th/cmp-nvim-lsp" } },
        --     config = function()
        --         cmp.setup({
        --
        --             completion = {
        --                 completeopt = "menu,menuone,noselect",
        --             },
        --
        --             -- You must set mapping.
        --             mapping = {
        --                 ["<C-p>"] = cmp.mapping.select_prev_item(),
        --                 ["<C-n>"] = cmp.mapping.select_next_item(),
        --                 ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        --                 ["<C-f>"] = cmp.mapping.scroll_docs(4),
        --                 ["<C-Space>"] = cmp.mapping.complete(),
        --                 ["<C-e>"] = cmp.mapping.close(),
        --             },
        --
        --             -- You should specify your *installed* sources.
        --             sources = {
        --                 { name = "nvim_lsp" },
        --             },
        --         })
        --
        --     end,
        -- })

        use({
            "neovim/nvim-lspconfig",
            config = function()
                local function create_capabilities()
                    local capabilities = vim.lsp.protocol.make_client_capabilities()
                    capabilities.textDocument.completion.completionItem.snippetSupport = true
                    capabilities.textDocument.completion.completionItem.preselectSupport = true
                    capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
                    capabilities.textDocument.completion.completionItem.deprecatedSupport = true
                    capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
                    capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
                    capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
                    capabilities.textDocument.completion.completionItem.resolveSupport = {
                        properties = { "documentation", "detail", "additionalTextEdits" },
                    }
                    capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown" }
                    capabilities.textDocument.codeAction = {
                        dynamicRegistration = true,
                        codeActionLiteralSupport = {
                            codeActionKind = {
                                valueSet = (function()
                                    local res = vim.tbl_values(vim.lsp.protocol.CodeActionKind)
                                    table.sort(res)
                                    return res
                                end)(),
                            },
                        },
                    }
                    return capabilities
                end

                --     -- disable virtual text (recommended for julia)
                vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
                    virtual_text = false,
                    underline = false,
                    signs = true,
                    update_in_insert = false,
                })

                local on_attach = function(client, bufnr)
                    -- vim.api.buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
                end
                --
                local lspconfig = require("lspconfig")

                local function lsp_setup(name, config)
                    lspconfig[name].setup(config)
                end

                lsp_setup("julials", {
                    on_attach = on_attach,
                    capabilities = create_capabilities(),
                })

            end,
        })



    end)
