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
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["SmoothCursor.nvim"] = {
    config = { "\27LJ\2\në\4\0\0\6\0\18\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0034\4\b\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\0045\5\r\0>\5\a\4=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\nfancy\ttail\1\0\1\vtexthl\17SmoothCursor\tbody\1\0\2\vcursor\6.\vtexthl\23SmoothCursorPurple\1\0\2\vcursor\6.\vtexthl\21SmoothCursorBlue\1\0\2\vcursor\bâ€¢\vtexthl\21SmoothCursorAqua\1\0\2\vcursor\bâ—\vtexthl\22SmoothCursorGreen\1\0\2\vcursor\bâ—\vtexthl\23SmoothCursorYellow\1\0\2\vcursor\bï˜®\vtexthl\23SmoothCursorOrange\1\0\2\vcursor\bï˜®\vtexthl\20SmoothCursorRed\thead\1\0\2\vcursor\bâ–·\vtexthl\17SmoothCursor\1\0\1\venable\2\1\0\t\ftimeout\3¸\23\vcursor\bï‘Š\14intervals\3#\14threshold\3\1\rpriority\3\n\nspeed\3\5\vtexthl\17SmoothCursor\ttype\fdefault\14autostart\2\nsetup\17smoothcursor\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
    url = "https://github.com/gen740/SmoothCursor.nvim"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot-cmp"] = {
    config = { "\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23clear_after_cursor\2\nsetup\16copilot_cmp\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    config = { "\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\15suggestion\1\0\0\1\0\1\17auto_trigger\1\nsetup\fcopilot\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3d\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  cpsm = {
    config = { "\27LJ\2\n¬\1\0\0\2\0\6\0\a6\0\0\0009\0\1\0'\1\3\0=\1\2\0005\1\5\0=\1\4\0K\0\1\0\1\0\1\nmatch\20cpsm#CtrlPMatch\21ctrlp_match_funcHfd --type f --hidden --follow --exclude .git --exclude node_modules\25cpsm_default_command\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  fd = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["guihua.lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/guihua.lua",
    url = "https://github.com/ray-x/guihua.lua"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["legendary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/legendary.nvim",
    url = "https://github.com/mrjones2014/legendary.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n’\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\r\fpadding\5\16hint_prefix\tïŸ» \16hint_enable\2\ffix_pos\2\20floating_window\2\14doc_lines\3\2\vzindex\3È\1\14max_width\3x\15max_height\3\22\tbind\2\17hi_parameter\vSearch\16use_lspsaga\1\16hint_scheme\vString\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nv\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\27automatic_installation\2\20mason-lspconfig\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["navigator.lua"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.navigator\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/navigator.lua",
    url = "https://github.com/ray-x/navigator.lua"
  },
  neotest = {
    config = { "\27LJ\2\n‘\2\0\0\b\0\14\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0004\3\4\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0005\a\4\0=\a\6\6B\4\2\2>\4\1\0036\4\0\0'\6\a\0B\4\2\2>\4\2\0036\4\0\0'\6\b\0B\4\2\0025\6\n\0005\a\t\0=\a\v\6B\4\2\0?\4\0\0=\3\r\2B\0\2\1K\0\1\0\radapters\1\0\0\22ignore_file_types\1\0\0\1\4\0\0\vpython\bvim\blua\21neotest-vim-test\20neotest-plenary\bdap\1\0\0\1\0\1\15justMyCode\1\19neotest-python\nsetup\fneotest\frequire\a€€À™\4\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-plenary"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neotest-plenary",
    url = "https://github.com/nvim-neotest/neotest-plenary"
  },
  ["neotest-python"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neotest-python",
    url = "https://github.com/nvim-neotest/neotest-python"
  },
  ["neotest-vim-test"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/neotest-vim-test",
    url = "https://github.com/nvim-neotest/neotest-vim-test"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.colorizer\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    config = { "\27LJ\2\n¹\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\2\venable\2\15min_length\3\3\15cursorline\1\0\0\1\0\3\ftimeout\3è\a\venable\2\vnumber\2\nsetup\20nvim-cursorline\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nv\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\29highlight_new_as_changed\1\21show_stop_reason\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\nŽ\5\0\0\a\0\25\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\20\0005\4\16\0005\5\14\0004\6\0\0=\6\15\5=\5\17\0045\5\18\0004\6\0\0=\6\15\5=\5\19\4=\4\21\0035\4\22\0004\5\0\0=\5\15\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\tkeys\bfzf\1\0\3\vselect\fdefault\17paste_behind\vctrl-k\npaste\vctrl-p\14telescope\1\0\0\6n\1\0\5\vselect\t<cr>\17paste_behind\6P\vdelete\6d\vreplay\6q\npaste\6p\6i\1\0\0\vcustom\1\0\5\vselect\t<cr>\17paste_behind\n<c-k>\vdelete\n<c-d>\vreplay\n<c-q>\npaste\n<c-p>\14on_replay\1\0\1\fset_reg\1\ron_paste\1\0\1\fset_reg\1\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\t\17length_limit\3€€@\30enable_persistent_history\1\fhistory\3è\a\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\fpreview\2\20continuous_sync\1\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-nonicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-nonicons\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["smart-splits.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3€5\2\3\0L\2\2\0X\2\2€5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\5î\t\1\0\17\0?\3p6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0009\f\26\0B\f\1\2=\f\27\vB\t\2\0024\n\3\0009\v\28\0003\r\29\0B\v\2\2>\v\1\n9\v\30\0B\v\1\0?\v\0\0009\v\18\0005\r \0009\14\20\0005\16\31\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2!\0B\2\1\2>\2\1\0019\2\"\0B\2\1\0?\2\0\0009\2#\0009\4$\0005\6%\0009\a&\0B\a\1\2=\a'\6=\1(\0065\a)\0009\b*\0B\b\1\2>\b\2\a9\b+\0005\n,\0005\v-\0=\v.\nB\b\2\0?\b\2\0=\a/\0065\a0\0009\b1\0B\b\1\0?\b\0\0=\a2\6B\4\2\0A\2\0\0029\0033\0005\0054\0=\1(\0055\0065\0009\a6\0B\a\1\2>\a\2\6=\6/\0055\0067\0009\a8\0B\a\1\0?\a\0\0=\0062\5B\3\2\0029\4\6\0'\0069\0009\a:\0005\t;\0=\2<\t=\3=\t=\3>\tB\a\2\0A\4\1\1K\0\1\0\15substitute\6/\6:\1\0\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\1\14separator\t Â· \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6+\bï£ª\6h\bïœ£\6a\bïœ“\1\0\1\nflags\n a + \27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\1\vborder\frounded\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\2\21cmdline_pipeline\1\0\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\1\23skip_cmdtype_check\3\1\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5€€À™\4\3€€À™\4\a€€À™\4\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["windline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23wlsample.evil_line\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: SmoothCursor.nvim
time([[Config for SmoothCursor.nvim]], true)
try_loadstring("\27LJ\2\në\4\0\0\6\0\18\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0034\4\b\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\0045\5\r\0>\5\a\4=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\nfancy\ttail\1\0\1\vtexthl\17SmoothCursor\tbody\1\0\2\vcursor\6.\vtexthl\23SmoothCursorPurple\1\0\2\vcursor\6.\vtexthl\21SmoothCursorBlue\1\0\2\vcursor\bâ€¢\vtexthl\21SmoothCursorAqua\1\0\2\vcursor\bâ—\vtexthl\22SmoothCursorGreen\1\0\2\vcursor\bâ—\vtexthl\23SmoothCursorYellow\1\0\2\vcursor\bï˜®\vtexthl\23SmoothCursorOrange\1\0\2\vcursor\bï˜®\vtexthl\20SmoothCursorRed\thead\1\0\2\vcursor\bâ–·\vtexthl\17SmoothCursor\1\0\1\venable\2\1\0\t\ftimeout\3¸\23\vcursor\bï‘Š\14intervals\3#\14threshold\3\1\rpriority\3\n\nspeed\3\5\vtexthl\17SmoothCursor\ttype\fdefault\14autostart\2\nsetup\17smoothcursor\frequire\0", "config", "SmoothCursor.nvim")
time([[Config for SmoothCursor.nvim]], false)
-- Config for: copilot-cmp
time([[Config for copilot-cmp]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23clear_after_cursor\2\nsetup\16copilot_cmp\frequire\0", "config", "copilot-cmp")
time([[Config for copilot-cmp]], false)
-- Config for: neotest
time([[Config for neotest]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\b\0\14\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0004\3\4\0006\4\0\0'\6\3\0B\4\2\0025\6\5\0005\a\4\0=\a\6\6B\4\2\2>\4\1\0036\4\0\0'\6\a\0B\4\2\2>\4\2\0036\4\0\0'\6\b\0B\4\2\0025\6\n\0005\a\t\0=\a\v\6B\4\2\0?\4\0\0=\3\r\2B\0\2\1K\0\1\0\radapters\1\0\0\22ignore_file_types\1\0\0\1\4\0\0\vpython\bvim\blua\21neotest-vim-test\20neotest-plenary\bdap\1\0\0\1\0\1\15justMyCode\1\19neotest-python\nsetup\fneotest\frequire\a€€À™\4\0", "config", "neotest")
time([[Config for neotest]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nv\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\29highlight_new_as_changed\1\21show_stop_reason\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\nŽ\5\0\0\a\0\25\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\20\0005\4\16\0005\5\14\0004\6\0\0=\6\15\5=\5\17\0045\5\18\0004\6\0\0=\6\15\5=\5\19\4=\4\21\0035\4\22\0004\5\0\0=\5\15\4=\4\23\3=\3\24\2B\0\2\1K\0\1\0\tkeys\bfzf\1\0\3\vselect\fdefault\17paste_behind\vctrl-k\npaste\vctrl-p\14telescope\1\0\0\6n\1\0\5\vselect\t<cr>\17paste_behind\6P\vdelete\6d\vreplay\6q\npaste\6p\6i\1\0\0\vcustom\1\0\5\vselect\t<cr>\17paste_behind\n<c-k>\vdelete\n<c-d>\vreplay\n<c-q>\npaste\n<c-p>\14on_replay\1\0\1\fset_reg\1\ron_paste\1\0\1\fset_reg\1\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\t\17length_limit\3€€@\30enable_persistent_history\1\fhistory\3è\a\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\fpreview\2\20continuous_sync\1\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: nvim-cursorline
time([[Config for nvim-cursorline]], true)
try_loadstring("\27LJ\2\n¹\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\2\venable\2\15min_length\3\3\15cursorline\1\0\0\1\0\3\ftimeout\3è\a\venable\2\vnumber\2\nsetup\20nvim-cursorline\frequire\0", "config", "nvim-cursorline")
time([[Config for nvim-cursorline]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nv\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\27automatic_installation\2\20mason-lspconfig\nsetup\nmason\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: windline.nvim
time([[Config for windline.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23wlsample.evil_line\frequire\0", "config", "windline.nvim")
time([[Config for windline.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: nvim-nonicons
time([[Config for nvim-nonicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-nonicons\frequire\0", "config", "nvim-nonicons")
time([[Config for nvim-nonicons]], false)
-- Config for: navigator.lua
time([[Config for navigator.lua]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.navigator\frequire\0", "config", "navigator.lua")
time([[Config for navigator.lua]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3€5\2\3\0L\2\2\0X\2\2€5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\5î\t\1\0\17\0?\3p6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0009\f\26\0B\f\1\2=\f\27\vB\t\2\0024\n\3\0009\v\28\0003\r\29\0B\v\2\2>\v\1\n9\v\30\0B\v\1\0?\v\0\0009\v\18\0005\r \0009\14\20\0005\16\31\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2!\0B\2\1\2>\2\1\0019\2\"\0B\2\1\0?\2\0\0009\2#\0009\4$\0005\6%\0009\a&\0B\a\1\2=\a'\6=\1(\0065\a)\0009\b*\0B\b\1\2>\b\2\a9\b+\0005\n,\0005\v-\0=\v.\nB\b\2\0?\b\2\0=\a/\0065\a0\0009\b1\0B\b\1\0?\b\0\0=\a2\6B\4\2\0A\2\0\0029\0033\0005\0054\0=\1(\0055\0065\0009\a6\0B\a\1\2>\a\2\6=\6/\0055\0067\0009\a8\0B\a\1\0?\a\0\0=\0062\5B\3\2\0029\4\6\0'\0069\0009\a:\0005\t;\0=\2<\t=\3=\t=\3>\tB\a\2\0A\4\1\1K\0\1\0\15substitute\6/\6:\1\0\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\1\14separator\t Â· \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6+\bï£ª\6h\bïœ£\6a\bïœ“\1\0\1\nflags\n a + \27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\1\vborder\frounded\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\2\21cmdline_pipeline\1\0\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\1\23skip_cmdtype_check\3\1\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5€€À™\4\3€€À™\4\a€€À™\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: cpsm
time([[Config for cpsm]], true)
try_loadstring("\27LJ\2\n¬\1\0\0\2\0\6\0\a6\0\0\0009\0\1\0'\1\3\0=\1\2\0005\1\5\0=\1\4\0K\0\1\0\1\0\1\nmatch\20cpsm#CtrlPMatch\21ctrlp_match_funcHfd --type f --hidden --follow --exclude .git --exclude node_modules\25cpsm_default_command\6g\bvim\0", "config", "cpsm")
time([[Config for cpsm]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n’\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\r\fpadding\5\16hint_prefix\tïŸ» \16hint_enable\2\ffix_pos\2\20floating_window\2\14doc_lines\3\2\vzindex\3È\1\14max_width\3x\15max_height\3\22\tbind\2\17hi_parameter\vSearch\16use_lspsaga\1\16hint_scheme\vString\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'copilot.lua'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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
