-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["everforest-nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15background\thard\nsetup\15everforest\frequire\0" },
    loaded = true,

    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/everforest-nvim",
    url = "https://github.com/neanias/everforest-nvim"

  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["julia-vim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/julia-vim",
    url = "https://github.com/JuliaEditorSupport/julia-vim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogen = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  nightfox = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nightfox",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {

    config = { "\27LJ\2\nm\0\0\4\0\a\0\f6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\0029\2\4\2B\0\2\0026\1\5\0009\1\6\1\18\3\0\0B\1\2\1L\0\2\0\tsort\ntable\19CodeActionKind\rprotocol\blsp\15tbl_values\bvim­\5\1\0\a\0\30\0B6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\b\0019\1\4\0009\1\5\0019\1\6\0015\2\v\0005\3\n\0=\3\f\2=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\15\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\16\0019\1\4\0009\1\5\0019\1\6\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\4\0009\1\5\0019\1\6\0015\2\22\0=\2\21\0019\1\4\0005\2\24\0005\3\27\0005\4\26\0003\5\25\0B\5\1\2=\5\f\4=\4\28\3=\3\29\2=\2\23\0012\0\0€L\0\2\0\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\0\1\0\1\24dynamicRegistration\2\15codeAction\1\2\0\0\rmarkdown\24documentationFormat\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\28commitCharactersSupport\24labelDetailsSupport\25insertReplaceSupport\22deprecatedSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\v\0\2\2\0\0\0\1K\0\1\0'\0\2\5\1\1\0\6-\2\0\0008\2\0\0029\2\0\2\18\4\1\0B\2\2\1K\0\1\0\2À\nsetup~\1\0\n\0\t\0\0163\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0023\3\4\0\18\4\3\0'\6\5\0005\a\6\0=\1\a\a\18\b\0\0B\b\1\2=\b\b\aB\4\3\0012\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\fjulials\0\14lspconfig\frequire\0\0\0" },

    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },

  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/olimorris/onedark.nvim"
  },

  ["packer.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  sonokai = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n•\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\t\21ignore_beginning\2\21enable_backwards\2\15act_as_tab\2\16default_tab\n<C-t>\22default_shift_tab\n<C-d>\vtabkey\n<Tab>\21backwards_tabkey\f<S-Tab>\21act_as_shift_tab\1\15completion\2\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,

    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"

  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,

    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"

  },
  ["vim-maximizer"] = {
    loaded = true,

    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"

  },
  ["vim-tmux-navigator"] = {
    loaded = true,

    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/wespoulsen/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"

  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)

try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nm\0\0\4\0\a\0\f6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\0029\2\4\2B\0\2\0026\1\5\0009\1\6\1\18\3\0\0B\1\2\1L\0\2\0\tsort\ntable\19CodeActionKind\rprotocol\blsp\15tbl_values\bvim­\5\1\0\a\0\30\0B6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\b\0019\1\4\0009\1\5\0019\1\6\0015\2\v\0005\3\n\0=\3\f\2=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\15\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\16\0019\1\4\0009\1\5\0019\1\6\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\4\0009\1\5\0019\1\6\0015\2\22\0=\2\21\0019\1\4\0005\2\24\0005\3\27\0005\4\26\0003\5\25\0B\5\1\2=\5\f\4=\4\28\3=\3\29\2=\2\23\0012\0\0€L\0\2\0\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\0\1\0\1\24dynamicRegistration\2\15codeAction\1\2\0\0\rmarkdown\24documentationFormat\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\28commitCharactersSupport\24labelDetailsSupport\25insertReplaceSupport\22deprecatedSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\v\0\2\2\0\0\0\1K\0\1\0'\0\2\5\1\1\0\6-\2\0\0008\2\0\0029\2\0\2\18\4\1\0B\2\2\1K\0\1\0\2À\nsetup~\1\0\n\0\t\0\0163\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0023\3\4\0\18\4\3\0'\6\5\0005\a\6\0=\1\a\a\18\b\0\0B\b\1\2=\b\b\aB\4\3\0012\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\fjulials\0\14lspconfig\frequire\0\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: everforest-nvim
time([[Config for everforest-nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15background\thard\nsetup\15everforest\frequire\0", "config", "everforest-nvim")
time([[Config for everforest-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\n•\3\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\t\21ignore_beginning\2\21enable_backwards\2\15act_as_tab\2\16default_tab\n<C-t>\22default_shift_tab\n<C-d>\vtabkey\n<Tab>\21backwards_tabkey\f<S-Tab>\21act_as_shift_tab\1\15completion\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
