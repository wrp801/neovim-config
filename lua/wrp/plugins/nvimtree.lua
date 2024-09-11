 return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- empty setup using defaults
    -- require("nvim-tree").setup()

    -- OR setup with some options
    -- require("nvim-tree").setup({
    --   sort_by = "case_sensitive",
    --   view = {
    --     adaptive_size = true,
    --     mappings = {
    --       list = {
    --         { key = "u", action = "dir_up" },
    --       },
    --     },
    --   },
    --   renderer = {
    --     group_empty = true,
    --   },
    --   filters = {
    --     dotfiles = true,
    --   },
    -- })

    local setup, nvimtree = pcall(require, "nvim-tree")
    if not setup then 
        return
    end
    nvimtree.setup({
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
      dotfiles = false
      },
      git = {
          enable = true, 
          ignore = false,
          timeout = 500

      }
      -- 	git = {
      -- 		ignore = false,
      -- 	},
    })
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

    local api = require('nvim-tree.api')
    vim.keymap.set("n", "<leader>e", function() api.tree.toggle() end, { desc = "Toggle file explorer"}) -- toggle file explorer
    vim.keymap.set("n", "<leader>nff", ":NvimTreeFindFile<CR>", { desc = "Find file in the file tree"}) -- find file in file tree
    vim.keymap.set("n", "<leader>ncf", api.fs.create, {noremap = true, silent = true}, { desc = "Create a file in nvim tree"} ) -- create a file in nvim tree
    vim.keymap.set('n', '<leader>ncd', api.tree.change_root_to_node, {noremap = true, silent = true}, { desc = "Change root to node"})
  end
}
