vim.g.mapleader = " "
-- vim.keymap.set("n","<leader>pv", vim.cmd.Ex) -- not needed with file tree
vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighted search results
vim.keymap.set("n", "x", '"_x') -- won't copy the deleted character into a register

-- remaps for splits
vim.keymap.set("n", "<leader>vs", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>hs", "<C-w>s") -- horizontal split
vim.keymap.set('n', "<leader>sx", ":close<CR>") -- close a split
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n","<leader>wl", "<C-w>l") -- navigate to left split
vim.keymap.set("n","<leader>wh", "<C-w>h") -- navigate to right split
vim.keymap.set("n","<leader>wj", "<C-w>j") -- navigate to bottom split
vim.keymap.set("n","<leader>wk", "<C-w>k") -- navigate to top split

-- remaps for tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
-- vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

-- remaps for buffers
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferNext)
vim.keymap.set("n","<leader>bp", vim.cmd.BufferPrevious)
vim.keymap.set("n", '<leader>bc', vim.cmd.BufferClose)
vim.keymap.set("n","<leader>bl", vim.cmd.ls)
vim.keymap.set("n", "<leader>bb", vim.cmd.BufferOrderByBufferNumber)
vim.keymap.set("n", "<leader>bd", vim.cmd.BufferOrderByDirectory)
vim.keymap.set("n", "<leader>bl", vim.cmd.BufferOrderByLanguage)
vim.keymap.set("n", "<leader>bw", vim.cmd.BufferOrderByWindow)

-- remap for neogen
vim.keymap.set("n", "<leader>ng", vim.cmd.Neogen)


-- remap to go to definition in new tab
vim.api.nvim_buf_set_keymap(0, "n", "gD", "<CMD>tab LspDefinition<CR>", {noremap = true, silent = true})

-- vim-maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
local api = require('nvim-tree.api')
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>nff", ":NvimTreeFindFile<CR>") -- find file in file tree
vim.keymap.set("n", "<leader>ncf", api.fs.create, {noremap = true, silent = true}) -- create a file in nvim tree
-- vim.keymap.set('n','<leader>ndf', api.fs.delete, {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ncd', api.tree.change_root_to_node, {noremap = true, silent = true})


-- trouble remaps
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)


-- telescope remaps
-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>lds', function () 
    builtin.lsp_document_symbols({symbols = {'class', 'function','method', 'struct', 'enum'} }) end)
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })


-- telescope git commands (not on youtube nvim video)
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]


-- custom keymaps 
vim.api.nvim_set_keymap('n', '<leader>gds', '<cmd>vsplit | execute "normal! " . v:count1 . "gd"<CR>', { noremap = true, silent = true }) -- go to definition in a new split

-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  -- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  -- map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end
