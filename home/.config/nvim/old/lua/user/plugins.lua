local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
  use { "windwp/nvim-autopairs" } -- Autopairs, integrates with both cmp and treesitter
  use { "numToStr/Comment.nvim" }
  -- use { "JoosepAlviste/nvim-ts-context-commentstring"}
  use { "kyazdani42/nvim-web-devicons" }
  use { "yamatsum/nvim-nonicons",
    config = function()
      require("nvim-nonicons").setup({})
    end }
  use { "kyazdani42/nvim-tree.lua" }
  use { "akinsho/bufferline.nvim" }
  -- use { "moll/vim-bbye"}
  -- use { "nvim-lualine/lualine.nvim"}
  use { "akinsho/toggleterm.nvim" }
  use { "ahmedkhalf/project.nvim" }
  use { "lewis6991/impatient.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "goolord/alpha-nvim" }
  use { "folke/which-key.nvim" }

  -- Colorschemes
  use { "folke/tokyonight.nvim" }
  use { "lunarvim/darkplus.nvim" }

  -- Cmp
  use { "hrsh7th/nvim-cmp" } -- The completion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup({ clear_after_cursor = true })
    end }

  -- Snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

  -- LSP
  use { "neovim/nvim-lspconfig" } -- enable LSP
  use { "williamboman/mason.nvim" } -- simple to use language server installer
  use { "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason").setup()
      require('mason-lspconfig').setup({
        automatic_installation = true,
      })
    end }
  use { "jose-elias-alvarez/null-ls.nvim" } -- for formatters and linters
  -- use { "RRethy/vim-illuminate"}

  -- Telescope
  use { "nvim-telescope/telescope.nvim" }
  use { "nvim-telescope/telescope-symbols.nvim", }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter"
  }

  -- Git
  use { "lewis6991/gitsigns.nvim" }


  use { "yamatsum/nvim-cursorline",
    config = function()
      require('nvim-cursorline').setup({
        cursorline = {
          enable = true,
          timeout = 1000,
          number = true,
        },
        cursorword = {
          enable = true,
          min_length = 3,
          hl = { underline = true },
        }
      })
    end }
  use { "NvChad/nvim-colorizer.lua",
    config = function()
      require('user.colorizer')
    end }

  use { "windwp/windline.nvim",
    config = function()
      require('wlsample.evil_line')
    end }
  use { "ray-x/lsp_signature.nvim",
    config = function()
      require 'lsp_signature'.setup({
        bind = true,
        doc_lines = 2,
        floating_window = true,
        fix_pos = true,
        hint_enable = true,
        hint_prefix = " ",
        hint_scheme = "String",
        use_lspsaga = false,
        hi_parameter = "Search",
        max_height = 22,
        max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
        handler_opts = {
          border = "single", -- double, single, shadow, none
        },
        zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
        padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
      })
    end,
  }
  use { "AckslD/nvim-neoclip.lua",
    config = function()
      require('neoclip').setup({
        history = 1000,
        enable_persistent_history = false,
        length_limit = 1048576,
        continuous_sync = false,
        db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
        filter = nil,
        preview = true,
        prompt = nil,
        default_register = '"',
        default_register_macros = 'q',
        enable_macro_history = true,
        content_spec_column = false,
        on_paste = {
          set_reg = false,
        },
        on_replay = {
          set_reg = false,
        },
        keys = {
          telescope = {
            i = {
              select = '<cr>',
              paste = '<c-p>',
              paste_behind = '<c-k>',
              replay = '<c-q>', -- replay a macro
              delete = '<c-d>', -- delete an entry
              custom = {},
            },
            n = {
              select = '<cr>',
              paste = 'p',
              --- It is possible to map to more than one key.
              -- paste = { 'p', '<c-p>' },
              paste_behind = 'P',
              replay = 'q',
              delete = 'd',
              custom = {},
            },
          },
          fzf = {
            select = 'default',
            paste = 'ctrl-p',
            paste_behind = 'ctrl-k',
            custom = {},
          },
        },
      })

    end,
  }
  use { "kkharji/sqlite.lua" }
  use { "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
  use { "gen740/SmoothCursor.nvim",
    config = function()
      require('smoothcursor').setup({
        autostart = true,
        cursor = "", -- cursor shape (need nerd font)
        texthl = "SmoothCursor", -- highlight group, default is { bg = nil, fg = "#FFD400" }
        linehl = nil, -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
        type = "default", -- define cursor movement calculate function, "default" or "exp" (exponential).
        fancy = {
          enable = true, -- enable fancy mode
          head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
          body = {
            { cursor = "", texthl = "SmoothCursorRed" },
            { cursor = "", texthl = "SmoothCursorOrange" },
            { cursor = "●", texthl = "SmoothCursorYellow" },
            { cursor = "●", texthl = "SmoothCursorGreen" },
            { cursor = "•", texthl = "SmoothCursorAqua" },
            { cursor = ".", texthl = "SmoothCursorBlue" },
            { cursor = ".", texthl = "SmoothCursorPurple" },
          },
          tail = { cursor = nil, texthl = "SmoothCursor" }
        },
        speed = 5, -- max is 100 to stick to your current position
        intervals = 35, -- tick interval
        priority = 10, -- set marker priority
        timeout = 3000, -- timout for animation
        threshold = 1, -- animate if threshold lines jump
      })
    end
  }
  use { "phaazon/hop.nvim",
    config = function()
      require 'hop'.setup {}
    end }

  use { "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({ suggestion = { auto_trigger = false } })
      end, 100)
    end }
  use { 'ibhagwan/fzf-lua' }
  -- use { "nathom/filetype.nvim",
  --   config = function()
  --     require("filetype").setup({})
  --   end }
  use { "ray-x/guihua.lua",
    run = ':vim.cmd("cd lua/fzy && make")'
  }
  use { "ray-x/navigator.lua",
    config = function()
      require("user.navigator")
    end }
  use { "mfussenegger/nvim-dap" }
  use { "mfussenegger/nvim-dap-python" }
  use { "rcarriga/nvim-dap-ui" }
  use { "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup({ highlight_new_as_changed = false,
        show_stop_reason = true })
    end
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use { 'romgrk/fzy-lua-native', run = 'make' }
  use { 'sharkdp/fd' }
  use { "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require "telescope".load_extension("frecency")
    end,
  }
  use { 'nixprime/cpsm',
    run = 'sh install.sh ',
    config = function()
      local g = vim.g
      g.cpsm_default_command = 'fd --type f --hidden --follow --exclude .git --exclude node_modules'
      g.ctrlp_match_func = { match = 'cpsm#CtrlPMatch' }
    end
  }
  use { "gelguy/wilder.nvim",
    config = function()
      local wilder = require('wilder')
      wilder.setup({ modes = { ':', '/', '?' } })

      wilder.set_option('pipeline', {
        wilder.branch(
          wilder.python_file_finder_pipeline({
            file_command = function(ctx, arg)
              if string.find(arg, '.') ~= nil then
                return { 'fdfind', '-tf', '-H' }
              else
                return { 'fdfind', '-tf' }
              end
            end,
            dir_command = { 'fd', '-td' },
            filters = { 'cpsm_filter' },
          }),
          wilder.substitute_pipeline({
            pipeline = wilder.python_search_pipeline({
              skip_cmdtype_check = 1,
              pattern = wilder.python_fuzzy_pattern({
                start_at_boundary = 0,
              }),
            }),
          }),
          wilder.cmdline_pipeline({
            fuzzy = 2,
            fuzzy_filter = wilder.lua_fzy_filter(),
          }),
          {
            wilder.check(function(ctx, x) return x == '' end),
            wilder.history(),
          },
          wilder.python_search_pipeline({
            pattern = wilder.python_fuzzy_pattern({
              start_at_boundary = 0,
            }),
          })
        ),
      })

      local highlighters = {
        wilder.pcre2_highlighter(),
        wilder.lua_fzy_highlighter(),
      }

      local popupmenu_renderer = wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          border = 'rounded',
          empty_message = wilder.popupmenu_empty_message_with_spinner(),
          highlighter = highlighters,
          left = {
            ' ',
            wilder.popupmenu_devicons(),
            wilder.popupmenu_buffer_flags({
              flags = ' a + ',
              icons = { ['+'] = '', a = '', h = '' },
            }),
          },
          right = {
            ' ',
            wilder.popupmenu_scrollbar(),
          },
        })
      )

      local wildmenu_renderer = wilder.wildmenu_renderer({
        highlighter = highlighters,
        separator = ' · ',
        left = { ' ', wilder.wildmenu_spinner(), ' ' },
        right = { ' ', wilder.wildmenu_index() },
      })

      wilder.set_option('renderer', wilder.renderer_mux({
        [':'] = popupmenu_renderer,
        ['/'] = wildmenu_renderer,
        substitute = wildmenu_renderer,
      }))
    end,
  }
  use { "nvim-neotest/neotest-python" }
  use { "nvim-neotest/neotest-plenary" }
  use { "vim-test/vim-test" }
  use { "nvim-neotest/neotest-vim-test" }
  -- use { "antoinemadec/FixCursorHold.nvim" }
  use { 'nvim-neotest/neotest',
    config = function()
      require('neotest').setup({
        adapters = {
          require("neotest-python")({
            dap = { justMyCode = false },
            -- is_test_file = function()
            --   if not vim.endswith(file_path, ".py") then
            --     return false
            --   end
            --   local elems = vim.split(file_path, Path.path.sep)
            --   local file_name = elems[#elems]
            --   -- check if file is in test directory and return true
            --   return vim.startswith(file_name, "test_") or vim.endswith(file_name, "_test.py")
            -- end
          }),
          require("neotest-plenary"),
          require("neotest-vim-test")({
            ignore_file_types = { "python", "vim", "lua" },
          }),
        },
      })
    end
  }
  use { 'stevearc/dressing.nvim',
    config = function()
      -- code
      require('dressing').setup({})
    end
  }
  use { 'mrjones2014/smart-splits.nvim' }
  use { "mrjones2014/legendary.nvim" }



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
