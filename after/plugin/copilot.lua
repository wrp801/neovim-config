-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true
-- vim.keymap.set('i', '<C-;>', 'copilot#Accept("<CR>")', {
--   expr = true,
--   silent = true,
--   -- replace_keycodes = true -- this should override the existing mapping
-- })

require('copilot').setup({
  panel = {
    auto_refresh = false,
    keymap = {
      -- accept = "<leader><CR>",
      jump_prev = "[[",
      jump_next = "]]",
      refresh = "gr",
      open = "<M-CR>",
    },
  },
  suggestion = {
    auto_trigger = true,
    keymap = {
      -- accept = "<M-l>",
      accept = false, -- going to use tab completion instead
      prev = "<M-[>",
      next = "<M-]>",
      dismiss = "<C-]>",
    },
  },
})

vim.keymap.set("i", '<Tab>', function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, {
  silent = true,
})


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
    ["bash"] = true,
}

