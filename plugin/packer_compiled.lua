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
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
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
  nightfox = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nightfox",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2m\0\0\3\0\a\0\f6\0\0\0009\0\1\0006\1\0\0009\1\2\0019\1\3\0019\1\4\1B\0\2\0026\1\5\0009\1\6\1\18\2\0\0B\1\2\1L\0\2\0\tsort\ntable\19CodeActionKind\rprotocol\blsp\15tbl_values\bvim­\5\1\0\6\0\30\0B6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\b\0019\1\4\0009\1\5\0019\1\6\0015\2\v\0005\3\n\0=\3\f\2=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\15\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\16\0019\1\4\0009\1\5\0019\1\6\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\4\0009\1\5\0019\1\6\0015\2\22\0=\2\21\0019\1\4\0005\2\24\0005\3\27\0005\4\26\0003\5\25\0B\5\1\2=\5\f\4=\4\28\3=\3\29\2=\2\23\0012\0\0€L\0\2\0\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\0\1\0\1\24dynamicRegistration\2\15codeAction\1\2\0\0\rmarkdown\24documentationFormat\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\28commitCharactersSupport\24labelDetailsSupport\25insertReplaceSupport\22deprecatedSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\v\0\2\2\0\0\0\1K\0\1\0'\0\2\4\1\1\0\6-\2\0\0008\2\0\0029\2\0\2\18\3\1\0B\2\2\1K\0\1\0\2À\nsetup¿\2\1\0\b\0\17\0\0293\0\0\0006\1\1\0009\1\2\0019\1\3\0016\2\1\0009\2\2\0029\2\5\0026\3\1\0009\3\2\0039\3\6\0039\3\a\0035\4\b\0B\2\3\2=\2\4\0013\1\t\0006\2\n\0'\3\v\0B\2\2\0023\3\f\0\18\4\3\0'\5\r\0005\6\14\0=\1\15\6\18\a\0\0B\a\1\2=\a\16\6B\4\3\0012\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\fjulials\0\14lspconfig\frequire\0\1\0\4\17virtual_text\1\nsigns\2\14underline\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\0" },
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/wes/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2m\0\0\3\0\a\0\f6\0\0\0009\0\1\0006\1\0\0009\1\2\0019\1\3\0019\1\4\1B\0\2\0026\1\5\0009\1\6\1\18\2\0\0B\1\2\1L\0\2\0\tsort\ntable\19CodeActionKind\rprotocol\blsp\15tbl_values\bvim­\5\1\0\6\0\30\0B6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\b\0019\1\4\0009\1\5\0019\1\6\0015\2\v\0005\3\n\0=\3\f\2=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\15\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\16\0019\1\4\0009\1\5\0019\1\6\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\4\0009\1\5\0019\1\6\0015\2\22\0=\2\21\0019\1\4\0005\2\24\0005\3\27\0005\4\26\0003\5\25\0B\5\1\2=\5\f\4=\4\28\3=\3\29\2=\2\23\0012\0\0€L\0\2\0\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\0\1\0\1\24dynamicRegistration\2\15codeAction\1\2\0\0\rmarkdown\24documentationFormat\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\28commitCharactersSupport\24labelDetailsSupport\25insertReplaceSupport\22deprecatedSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\v\0\2\2\0\0\0\1K\0\1\0'\0\2\4\1\1\0\6-\2\0\0008\2\0\0029\2\0\2\18\3\1\0B\2\2\1K\0\1\0\2À\nsetup¿\2\1\0\b\0\17\0\0293\0\0\0006\1\1\0009\1\2\0019\1\3\0016\2\1\0009\2\2\0029\2\5\0026\3\1\0009\3\2\0039\3\6\0039\3\a\0035\4\b\0B\2\3\2=\2\4\0013\1\t\0006\2\n\0'\3\v\0B\2\2\0023\3\f\0\18\4\3\0'\5\r\0005\6\14\0=\1\15\6\18\a\0\0B\a\1\2=\a\16\6B\4\3\0012\0\0€K\0\1\0\17capabilities\14on_attach\1\0\0\fjulials\0\14lspconfig\frequire\0\1\0\4\17virtual_text\1\nsigns\2\14underline\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

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
