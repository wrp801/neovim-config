vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

vim.g.copilot_filetypes = {
    ["*"] = false,
    ["javascript"] = true,
    ["typescript"] = true,
    ["lua"] = false,
    ["rust"] = true,
    ["c"] = true,
    ["c#"] = true,
    ["c++"] = true,
    ["go"] = true,
    ["python"] = true,
}


--#NOTE:custom remap for copilot accept. Default is <TAB> but that doesn't play well with the LSP and CMP
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'copilot#Accept(“<CR>”)', {expr=true, silent=true})
