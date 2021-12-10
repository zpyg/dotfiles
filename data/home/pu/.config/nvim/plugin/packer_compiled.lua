-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/pu/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/pu/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/pu/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/pu/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/pu/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\1\2c\0\0\2\0\4\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\1G\0\1\0!highlight! Normal guibg=NONE\23colorschem gruvbox\bcmd\bvim\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nnn.nvim"] = {
    commands = { "NnnExplorer", "NnnPicker" },
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bnnn\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nnn.nvim",
    url = "https://github.com/luukvbaal/nnn.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2T\0\0\2\0\4\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0002\1\0\0>\0\2\1G\0\1\0\nsetup\25jedi_language_server\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2ß\1\0\0\4\0\t\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0003\2\3\0002\3\0\0:\3\4\2:\2\6\0013\2\a\0:\2\b\1>\0\2\1G\0\1\0\21ensure_installed\1\15\0\0\6c\bcpp\vpython\tbash\blua\bvim\nregex\15javascript\bcss\thtml\njson5\tyaml\ttoml\tjson\14highlight\1\0\0\fdisable\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\1\2c\0\0\2\0\4\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\1G\0\1\0!highlight! Normal guibg=NONE\23colorschem gruvbox\bcmd\bvim\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2ß\1\0\0\4\0\t\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0003\2\3\0002\3\0\0:\3\4\2:\2\6\0013\2\a\0:\2\b\1>\0\2\1G\0\1\0\21ensure_installed\1\15\0\0\6c\bcpp\vpython\tbash\blua\bvim\nregex\15javascript\bcss\thtml\njson5\tyaml\ttoml\tjson\14highlight\1\0\0\fdisable\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2T\0\0\2\0\4\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0002\1\0\0>\0\2\1G\0\1\0\nsetup\25jedi_language_server\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NnnPicker lua require("packer.load")({'nnn.nvim'}, { cmd = "NnnPicker", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NnnExplorer lua require("packer.load")({'nnn.nvim'}, { cmd = "NnnExplorer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
