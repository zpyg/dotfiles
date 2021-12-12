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
  local success, result = pcall(loadstring(s))
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
  ["accelerated-jk"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["alpha-nvim"] = {
    config = { '\27LJ\1\2?\0\3\t\1\3\0\t+\3\0\0007\3\0\3\16\4\0\0\16\5\1\0%\6\1\0\16\a\2\0%\b\2\0$\6\b\6@\3\4\0\1¿\t<CR>\n<CMD>\vbuttonû\t\1\0\t\0"\1B4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0021\2\3\0007\3\4\0017\3\5\0033\4\a\0:\4\6\0037\3\4\0017\3\b\0032\4\b\0\16\5\2\0%\6\t\0%\a\n\0%\b\v\0>\5\4\2;\5\1\4\16\5\2\0%\6\f\0%\a\r\0%\b\14\0>\5\4\2;\5\2\4\16\5\2\0%\6\15\0%\a\16\0%\b\17\0>\5\4\2;\5\3\4\16\5\2\0%\6\18\0%\a\19\0%\b\20\0>\5\4\2;\5\4\4\16\5\2\0%\6\21\0%\a\22\0%\b\23\0>\5\4\2;\5\5\4\16\5\2\0%\6\24\0%\a\25\0%\b\26\0>\5\4\2;\5\6\4\16\5\2\0%\6\27\0%\a\28\0%\b\29\0>\5\4\0<\5\0\0:\4\6\0037\3\4\0017\3\30\3%\4\31\0:\4\6\0037\3 \0007\4!\1>\3\2\0010\0\0ÄG\0\1\0\topts\nsetup%:) Do one thing, and do it well.\vfooter\tquit\rÔúÖ Exit\6Q\17FzfLua marks\23ÔÄÆ Find Bookmarks\15<Leader>fb\21FzfLua live_grep\21ÔÄé Find Content\15<Leader>fG\20FzfLua oldfiles\21Ôáö Find History\15<Leader>fF\17FzfLua files\18ÔÄÇ Find File\15<Leader>ff\17RnvimrToggle\21ÔÅº File Manager\15<Leader>fm\27enew <BAR> startinsert\17ÔÖõ New file\15<Leader>nf\fbuttons\1\b\0\0M ________   _______   ________      ___      ___ ___  _____ ______      M|\\   ___  \\|\\  ___ \\ |\\   __  \\     \\  \\    /  /|\\  \\|\\   _ \\  _   \\    M\\ \\  \\\\ \\  \\ \\   __/|\\ \\  \\|\\  \\     \\  \\  /  / | \\  \\ \\  \\\\\\__\\ \\  \\   M \\ \\  \\\\ \\  \\ \\  \\_|/_\\ \\  \\\\\\  \\   \\ \\  \\/  / / \\ \\  \\ \\  \\\\|__| \\  \\  M  \\ \\  \\\\ \\  \\ \\  \\_|\\ \\ \\  \\\\\\  \\   \\ \\    / /   \\ \\  \\ \\  \\    \\ \\  \\ M   \\ \\__\\\\ \\__\\ \\_______\\ \\_______\\   \\ \\__/ /     \\ \\__\\ \\__\\    \\ \\__\\M    \\|__| \\|__|\\|_______|\\|_______|    \\|__|/       \\|__|\\|__|     \\|__|\bval\vheader\fsection\0\27alpha.themes.dashboard\nalpha\frequire\15ÄÄ¿ô\4\0' },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/alpha-nvim"
  },
  ["coq.artifacts"] = {
    load_after = {
      coq_nvim = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/coq.artifacts"
  },
  ["coq.thirdparty"] = {
    config = { "\27LJ\1\2U\0\0\3\0\3\0\b4\0\0\0%\1\1\0>\0\2\0022\1\3\0003\2\2\0;\2\1\1>\0\2\1G\0\1\0\1\0\2\bsrc\fnvimlua\15short_name\tnLUA\vcoq_3p\frequire\0" },
    load_after = {
      coq_nvim = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/coq.thirdparty"
  },
  coq_nvim = {
    after = { "coq.thirdparty", "coq.artifacts" },
    config = { "\27LJ\1\2õ\1\0\0\2\0\6\0\t4\0\0\0007\0\1\0003\1\3\0:\1\2\0004\0\0\0007\0\4\0%\1\5\0>\0\2\1G\0\1\0\21COQnow --shut-up\bcmd\1\0\3\26display.icons.spacing\3\2\23keymap.recommended\1\28clients.tabnine.enabled\2\17coq_settings\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/coq_nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/focus.nvim"
  },
  ["fzf-lua"] = {
    commands = { "FzfLua" },
    config = { "\27LJ\1\2u\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\fwinopts\1\0\1\rfzf_args\21--border=rounded\1\0\1\15win_border\1\nsetup\ffzf-lua\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    load_after = {
      ["gruvbox.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    after = { "indent-blankline.nvim", "nvim-colorizer.lua", "gitsigns.nvim" },
    config = { "\27LJ\1\0022\0\2\5\0\3\0\a4\2\0\0007\2\1\2%\3\2\0\16\4\0\0$\3\4\0039\1\3\2G\0\1\0\rgruvbox_\6g\bvimÂ\1\1\0\4\0\t\0\0261\0\0\0\16\1\0\0%\2\1\0'\3\1\0>\1\3\1\16\1\0\0%\2\2\0'\3\0\0>\1\3\1\16\1\0\0%\2\3\0'\3\1\0>\1\3\1\16\1\0\0%\2\4\0'\3\0\0>\1\3\0014\1\5\0007\1\6\1%\2\a\0>\1\2\0014\1\5\0007\1\6\1%\2\b\0>\1\2\1G\0\1\0!highlight! Normal guibg=NONE\23colorschem gruvbox\bcmd\bvim\21invert_selection\22italicize_strings\23italicize_comments\vitalic\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2Ö\2\0\0\3\0\t\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\0014\0\6\0007\0\a\0%\1\b\0>\0\2\1G\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\bvim\20buftype_exclude\1\3\0\0\rterminal\vnofile\1\0\4\25show_current_context\2\19use_treesitter\2\tchar\b‚îÇ#show_trailing_blankline_indent\2\nsetup\21indent_blankline\frequire\0" },
    load_after = {
      ["gruvbox.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\1\2à\3\0\0\3\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0:\2\t\1>\0\2\1G\0\1\0\23rename_action_keys\1\0\2\tquit\n<ESC>\texec\t<CR>\21code_action_keys\1\0\2\tquit\n<ESC>\texec\t<CR>\23finder_action_keys\1\0\6\tquit\n<ESC>\16scroll_down\n<C-j>\vvsplit\6s\topen\6o\14scroll_up\n<C-k>\nsplit\6i\1\0\b\29use_saga_diagnostic_sign\2\ndebug\1\17border_style\nround\25rename_prompt_prefix\6>\14hint_sign\6!\15error_sign\6!\14warn_sign\6!\15infor_sign\6!\18init_lsp_saga\flspsaga\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2†\1\0\1\b\0\b\2\0254\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2'\2\0\0\3\1\2\0T\2\2Ä%\2\3\0H\2\2\0003\2\4\0'\3\1\0'\4\0\4\1\4\1\0T\4\4ÄQ\4\3Ä\23\1\0\1\20\3\1\3T\4˘4\4\5\0007\4\6\4%\5\a\0\16\6\1\0006\a\3\2@\4\4\0\v%.1f%s\vformat\vstring\1\5\0\0\6b\6k\6m\6g\5\rgetfsize\afn\bvimÄ\16\2s\1\0\4\0\b\1\0191\0\0\0004\1\1\0007\1\2\0017\1\3\1%\2\4\0>\1\2\0024\2\5\0007\2\6\2\16\3\1\0>\2\2\2\t\2\0\0T\2\3Ä%\2\a\0000\0\0ÄH\2\2\0\16\2\0\0\16\3\1\0000\0\0Ä@\2\2\0\5\blen\vstring\b%:p\vexpand\afn\bvim\0\0ƒ\4\1\0\6\0\25\0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0013\2\t\0002\3\3\0003\4\b\0;\4\1\3:\3\n\0023\3\v\0001\4\f\0;\4\3\3:\3\r\0022\3\0\0:\3\14\0023\3\15\0003\4\16\0003\5\17\0:\5\18\0043\5\19\0:\5\20\4;\4\2\3:\3\21\0023\3\22\0:\3\23\0022\3\0\0:\3\24\2:\2\20\1>\0\2\1G\0\1\0\14lualine_z\14lualine_y\1\3\0\0\rlocation\rprogress\14lualine_x\rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\4\0\16diagnostics\16color_error\f#cc241d\15color_info\f#689d6a\15color_hint\f#ebdbb2\15color_warn\f#d79921\1\2\0\0\rfiletype\14lualine_c\14lualine_b\0\1\3\0\0\22vim.bo.fileformat\rencoding\14lualine_a\1\0\0\1\2\2\0\rfilename\16file_status\2\tpath\3\1\foptions\1\0\0\23disabled_filetypes\1\2\0\0\nalpha\1\0\3\23section_separators\5\25component_separators\6|\ntheme\fgruvbox\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  neoformat = {
    config = { "\27LJ\1\2ó\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0G\0\1\0 neoformat_basic_format_trim!neoformat_basic_format_retab!neoformat_basic_format_align\6g\bvim\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["nvim-autopairs"] = {
    config = { '\27LJ\1\2Î\1\0\0\2\1\n\2!4\0\0\0007\0\1\0007\0\2\0>\0\1\2\b\0\0\0T\0\23Ä4\0\0\0007\0\1\0007\0\3\0003\1\4\0>\0\2\0027\0\5\0\b\0\1\0T\0\5Ä+\0\0\0007\0\6\0%\1\a\0@\0\2\0T\0\rÄ+\0\0\0007\0\6\0%\1\b\0>\0\2\2+\1\0\0007\1\t\1>\1\1\2$\0\1\0H\0\2\0T\0\3Ä+\0\0\0007\0\t\0@\0\1\0G\0\1\0\1¿\17autopairs_cr\15<c-g><c-g>\n<c-y>\besc\rselected\1\2\0\0\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31ƒ\1\0\0\2\1\n\1\0284\0\0\0007\0\1\0007\0\2\0>\0\1\2\b\0\0\0T\0\18Ä4\0\0\0007\0\1\0007\0\3\0003\1\4\0>\0\2\0027\0\5\0\a\0\6\0T\0\nÄ+\0\0\0007\0\a\0%\1\b\0>\0\2\2+\1\0\0007\1\t\1>\1\1\2$\0\1\0H\0\2\0T\0\3Ä+\0\0\0007\0\t\0@\0\1\0G\0\1\0\1¿\17autopairs_bs\n<c-e>\besc\teval\tmode\1\2\0\0\tmode\18complete_info\15pumvisible\afn\bvim\0¸\4\1\0\a\0 \00084\0\0\0007\0\1\0007\0\2\0004\1\3\0%\2\4\0>\1\2\0027\2\5\0013\3\6\0>\2\2\1\16\2\0\0%\3\a\0%\4\b\0%\5\t\0003\6\n\0>\2\5\1\16\2\0\0%\3\a\0%\4\v\0%\5\f\0003\6\r\0>\2\5\1\16\2\0\0%\3\a\0%\4\14\0%\5\15\0003\6\16\0>\2\5\1\16\2\0\0%\3\a\0%\4\17\0%\5\18\0003\6\19\0>\2\5\0014\2\20\0002\3\0\0:\3\21\0024\2\21\0001\3\23\0:\3\22\2\16\2\0\0%\3\a\0%\4\24\0%\5\25\0003\6\26\0>\2\5\0014\2\21\0001\3\28\0:\3\27\2\16\2\0\0%\3\a\0%\4\29\0%\5\30\0003\6\31\0>\2\5\0010\0\0ÄG\0\1\0\1\0\2\texpr\2\fnoremap\2\22v:lua.MUtils.BS()\t<bs>\0\aBS\1\0\2\texpr\2\fnoremap\2\22v:lua.MUtils.CR()\t<cr>\0\aCR\vMUtils\a_G\1\0\2\texpr\2\fnoremap\2$pumvisible() ? "<c-p>" : "<bs>"\f<s-tab>\1\0\2\texpr\2\fnoremap\2%pumvisible() ? "<c-n>" : "<tab>"\n<tab>\1\0\2\texpr\2\fnoremap\2*pumvisible() ? "<c-e><c-c>" : "<c-c>"\n<c-c>\1\0\2\texpr\2\fnoremap\2*pumvisible() ? "<c-e><esc>" : "<esc>"\n<esc>\6i\1\0\1\vmap_bs\1\nsetup\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0' },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    load_after = {
      ["gruvbox.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2ñ\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\5\17line_mapping\bg//\20create_mappings\2\19marker_padding\2\21operator_mapping\ag/\18comment_empty\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-cursorword"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-cursorword"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim" },
    config = { '\27LJ\1\2¡\5\0\0\n\0$\0<4\0\0\0%\1\1\0>\0\2\0023\1\2\0007\2\3\0007\2\4\0027\2\5\0027\2\6\2%\3\a\0;\3\1\0027\2\b\0007\2\4\0027\2\5\0027\2\6\2%\3\t\0;\3\1\0027\2\n\0007\2\4\0027\2\5\0027\2\6\2%\3\v\0;\3\1\0024\2\f\0\16\3\1\0>\2\2\4T\5\4Ä6\a\6\0007\a\r\a2\b\0\0>\a\2\1A\5\3\3N\5˙7\2\14\0007\2\r\0023\3\16\0003\4\15\0:\4\6\0033\4!\0003\5\18\0003\6\17\0:\6\19\0053\6\21\0003\a\20\0:\a\22\6:\6\23\0053\6\28\0004\a\24\0007\a\25\a7\a\26\a%\b\27\0)\t\2\0>\a\3\2:\a\29\6:\6\30\0053\6\31\0:\6 \5:\5"\4:\4#\3>\2\2\1G\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\2\tpath\20/usr/bin/luajit\fversion\vLuaJIT\1\0\0\1\2\0\0!/usr/bin/lua-language-server\16sumneko_lua\nsetup\vipairs\31vscode-json-languageserver\vjsonls\30vscode-css-languageserver\ncssls\31vscode-html-languageserver\bcmd\19default_config\20document_config\thtml\1\n\0\0\vbashls\tccls\ngopls\25jedi_language_server\fpyright\thtml\ncssls\vjsonls\vyamlls\14lspconfig\frequire\0' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-hint-textobject", "nvim-treesitter-textobjects", "nvim-autopairs", "nvim-ts-autotag", "nvim-ts-rainbow" },
    config = { "\27LJ\1\2¸\4\0\0\6\0\22\0\0254\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0:\2\t\0013\2\n\0:\2\v\0013\2\f\0:\2\r\0013\2\19\0003\3\14\0003\4\15\0003\5\16\0:\5\17\4:\4\18\3:\3\20\2:\2\21\1>\0\2\1G\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\aiF\1\0\4\bcpp$(function_definition) @function\vpython$(function_definition) @function\tjava#(method_declaration) @function\6c$(function_definition) @function\1\0\4\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\14autopairs\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\19\0\0\tbash\6c\bcpp\bcss\ago\ngomod\thtml\15javascript\tjson\njson5\blua\vpython\tscss\ttoml\15typescript\bvim\bvue\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-hint-textobject"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  rnvimr = {
    commands = { "RnvimrToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pu/.local/share/nvim/site/pack/packer/opt/rnvimr"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\1\2f\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\2\19mappings_style\rsandwich\vprefix\14<Leader>s\nsetup\rsurround\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/surround.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/pu/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^hop"] = "hop.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
try_loadstring("\27LJ\1\2f\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\2\19mappings_style\rsandwich\vprefix\14<Leader>s\nsetup\rsurround\frequire\0", "config", "surround.nvim")
time([[Config for surround.nvim]], false)
-- Config for: neoformat
time([[Config for neoformat]], true)
try_loadstring("\27LJ\1\2ó\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0G\0\1\0 neoformat_basic_format_trim!neoformat_basic_format_retab!neoformat_basic_format_align\6g\bvim\0", "config", "neoformat")
time([[Config for neoformat]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2†\1\0\1\b\0\b\2\0254\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2'\2\0\0\3\1\2\0T\2\2Ä%\2\3\0H\2\2\0003\2\4\0'\3\1\0'\4\0\4\1\4\1\0T\4\4ÄQ\4\3Ä\23\1\0\1\20\3\1\3T\4˘4\4\5\0007\4\6\4%\5\a\0\16\6\1\0006\a\3\2@\4\4\0\v%.1f%s\vformat\vstring\1\5\0\0\6b\6k\6m\6g\5\rgetfsize\afn\bvimÄ\16\2s\1\0\4\0\b\1\0191\0\0\0004\1\1\0007\1\2\0017\1\3\1%\2\4\0>\1\2\0024\2\5\0007\2\6\2\16\3\1\0>\2\2\2\t\2\0\0T\2\3Ä%\2\a\0000\0\0ÄH\2\2\0\16\2\0\0\16\3\1\0000\0\0Ä@\2\2\0\5\blen\vstring\b%:p\vexpand\afn\bvim\0\0ƒ\4\1\0\6\0\25\0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0013\2\t\0002\3\3\0003\4\b\0;\4\1\3:\3\n\0023\3\v\0001\4\f\0;\4\3\3:\3\r\0022\3\0\0:\3\14\0023\3\15\0003\4\16\0003\5\17\0:\5\18\0043\5\19\0:\5\20\4;\4\2\3:\3\21\0023\3\22\0:\3\23\0022\3\0\0:\3\24\2:\2\20\1>\0\2\1G\0\1\0\14lualine_z\14lualine_y\1\3\0\0\rlocation\rprogress\14lualine_x\rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\4\0\16diagnostics\16color_error\f#cc241d\15color_info\f#689d6a\15color_hint\f#ebdbb2\15color_warn\f#d79921\1\2\0\0\rfiletype\14lualine_c\14lualine_b\0\1\3\0\0\22vim.bo.fileformat\rencoding\14lualine_a\1\0\0\1\2\2\0\rfilename\16file_status\2\tpath\3\1\foptions\1\0\0\23disabled_filetypes\1\2\0\0\nalpha\1\0\3\23section_separators\5\25component_separators\6|\ntheme\fgruvbox\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\1\2ñ\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\5\17line_mapping\bg//\20create_mappings\2\19marker_padding\2\21operator_mapping\ag/\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring('\27LJ\1\2?\0\3\t\1\3\0\t+\3\0\0007\3\0\3\16\4\0\0\16\5\1\0%\6\1\0\16\a\2\0%\b\2\0$\6\b\6@\3\4\0\1¿\t<CR>\n<CMD>\vbuttonû\t\1\0\t\0"\1B4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0021\2\3\0007\3\4\0017\3\5\0033\4\a\0:\4\6\0037\3\4\0017\3\b\0032\4\b\0\16\5\2\0%\6\t\0%\a\n\0%\b\v\0>\5\4\2;\5\1\4\16\5\2\0%\6\f\0%\a\r\0%\b\14\0>\5\4\2;\5\2\4\16\5\2\0%\6\15\0%\a\16\0%\b\17\0>\5\4\2;\5\3\4\16\5\2\0%\6\18\0%\a\19\0%\b\20\0>\5\4\2;\5\4\4\16\5\2\0%\6\21\0%\a\22\0%\b\23\0>\5\4\2;\5\5\4\16\5\2\0%\6\24\0%\a\25\0%\b\26\0>\5\4\2;\5\6\4\16\5\2\0%\6\27\0%\a\28\0%\b\29\0>\5\4\0<\5\0\0:\4\6\0037\3\4\0017\3\30\3%\4\31\0:\4\6\0037\3 \0007\4!\1>\3\2\0010\0\0ÄG\0\1\0\topts\nsetup%:) Do one thing, and do it well.\vfooter\tquit\rÔúÖ Exit\6Q\17FzfLua marks\23ÔÄÆ Find Bookmarks\15<Leader>fb\21FzfLua live_grep\21ÔÄé Find Content\15<Leader>fG\20FzfLua oldfiles\21Ôáö Find History\15<Leader>fF\17FzfLua files\18ÔÄÇ Find File\15<Leader>ff\17RnvimrToggle\21ÔÅº File Manager\15<Leader>fm\27enew <BAR> startinsert\17ÔÖõ New file\15<Leader>nf\fbuttons\1\b\0\0M ________   _______   ________      ___      ___ ___  _____ ______      M|\\   ___  \\|\\  ___ \\ |\\   __  \\     \\  \\    /  /|\\  \\|\\   _ \\  _   \\    M\\ \\  \\\\ \\  \\ \\   __/|\\ \\  \\|\\  \\     \\  \\  /  / | \\  \\ \\  \\\\\\__\\ \\  \\   M \\ \\  \\\\ \\  \\ \\  \\_|/_\\ \\  \\\\\\  \\   \\ \\  \\/  / / \\ \\  \\ \\  \\\\|__| \\  \\  M  \\ \\  \\\\ \\  \\ \\  \\_|\\ \\ \\  \\\\\\  \\   \\ \\    / /   \\ \\  \\ \\  \\    \\ \\  \\ M   \\ \\__\\\\ \\__\\ \\_______\\ \\_______\\   \\ \\__/ /     \\ \\__\\ \\__\\    \\ \\__\\M    \\|__| \\|__|\\|_______|\\|_______|    \\|__|/       \\|__|\\|__|     \\|__|\bval\vheader\fsection\0\27alpha.themes.dashboard\nalpha\frequire\15ÄÄ¿ô\4\0', "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FzfLua lua require("packer.load")({'fzf-lua'}, { cmd = "FzfLua", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file RnvimrToggle lua require("packer.load")({'rnvimr'}, { cmd = "RnvimrToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspconfig', 'gruvbox.nvim', 'nvim-treesitter', 'coq_nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'nvim-cursorword'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
