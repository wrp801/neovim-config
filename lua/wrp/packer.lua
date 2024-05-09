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
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- color schemes
    use { "EdenEast/nightfox.nvim", as = 'nightfox',
    use {"ellisonleao/gruvbox.nvim"},
    use {"olimorris/onedark.nvim"},
    use {'sainnhe/sonokai'},
    use({ 'rose-pine/neovim', as = 'rose-pine' }),
    -- use {'sainnhe/everforest', as = 'everforest'}, -- this was the original everforest used
    use({
        "neanias/everforest-nvim",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup({
                background = 'hard',
                }

            )
        end,
    }),

    use {'folke/tokyonight.nvim'}, 
    use {'rebelot/kanagawa.nvim'},
}

use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}
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
use 'JuliaEditorSupport/julia-vim' -- julia language

-- for aesthetics
use 'nvim-lualine/lualine.nvim'

-- for tmux suport
use("christoomey/vim-tmux-navigator") -- tmux & split window navigation
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
-- file explorer
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use("folke/zen-mode.nvim") -- zen mode
use('nvim-tree/nvim-web-devicons') -- icons
use 'DaikyXendo/nvim-material-icon' -- material theme icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'

use("szw/vim-maximizer") -- maximizes and restores current window

use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...

-- use ("github/copilot.vim")
use { "zbirenbaum/copilot.lua" } -- this is a lua implementation of copilot

--NOTE: this probably should be disabled for copilot
use {
  'abecodes/tabout.nvim',
  config = function()
    require('tabout').setup {
    tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
    act_as_tab = true, -- shift content if tab out is not possible
    act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
    default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
    default_shift_tab = '<C-d>', -- reverse shift default action,
    enable_backwards = true, -- well ...
    completion = false, -- if the tabkey is used in a completion pum
    tabouts = {
      {open = "'", close = "'"},
      {open = '"', close = '"'},
      {open = '`', close = '`'},
      {open = '(', close = ')'},
      {open = '[', close = ']'},
      {open = '{', close = '}'}
    },
    ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    exclude = {} -- tabout will ignore these filetypes
}
  end,
	wants = {'nvim-treesitter'}, -- or require if not used so far
	after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
}

use {"folke/todo-comments.nvim", dependencies = {"nvim-lua/plenary.nvim"}, opts = {}} -- todo comments 
use "sindrets/diffview.nvim" 

    end)
