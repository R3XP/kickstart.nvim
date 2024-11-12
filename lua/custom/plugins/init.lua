--[[ 

TODO:
 - [ ] Add smooth scroll?
 - [ ] Think about s mappings for leap / mini
 - [x] Add git pluing
 - [ ] quick shortcut to telescope caput vault
  - [ ] Add telescope to obsidian vault?

]]
--
-- require './keymaps.lua'

-- require('ufo').setup {
--   provider_selector = function(bufnr, filetype, buftype)
--     return { 'indent' }
--   end,
-- }

vim.opt.shiftwidth = 4
vim.opt.laststatus = 3

vim.keymap.set('n', '<leader>tl', function()
  vim.opt.list = not vim.opt.list:get()
end, { desc = '[T]oggle [L]ist chars' })

return {
  -- Color scheme
  -- { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,

    config = function()
      require('solarized-osaka').setup {
        transparent = false,
        -- disable italic for functions
        styles = {
          functions = {},
        },
        -- sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' },

        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        on_colors = function(colors)
          -- colors.hint = colors.orange
          -- colors.error = '#ff0000'

          colors.bg = colors.base04
          colors.bg_statusline = colors.bg
        end,

        -- ---@param highlights Highlights
        -- ---@param colors ColorScheme
        -- on_highlights = function (hl, colors)
        --   hl.Telesco
        -- end
      }

      vim.cmd.colorscheme 'solarized-osaka'
    end,
  },
  -- {
  --   'sam4llis/nvim-tundra',
  --   name = 'tundra',
  --   priority = 1000,
  --   config = function()
  --     require('nvim-tundra').setup {
  --       transparent_background = false,
  --       dim_inactive_windows = {
  --         enabled = false,
  --         color = nil,
  --       },
  --       sidebars = {
  --         enabled = true,
  --         color = nil,
  --       },
  --       editor = {
  --         search = {},
  --         substitute = {},
  --       },
  --       syntax = {
  --         booleans = { bold = true, italic = true },
  --         comments = { bold = true, italic = true },
  --         conditionals = {},
  --         constants = { bold = true },
  --         fields = {},
  --         functions = {},
  --         keywords = {},
  --         loops = {},
  --         numbers = { bold = true },
  --         operators = { bold = true },
  --         punctuation = {},
  --         strings = {},
  --         types = { italic = true },
  --       },
  --       diagnostics = {
  --         errors = {},
  --         warnings = {},
  --         information = {},
  --         hints = {},
  --       },
  --       plugins = {
  --         lsp = true,
  --         semantic_tokens = true,
  --         treesitter = true,
  --         telescope = true,
  --         nvimtree = true,
  --         cmp = true,
  --         context = true,
  --         dbui = true,
  --         gitsigns = true,
  --         neogit = true,
  --         textfsm = true,
  --       },
  --       overwrite = {
  --         colors = {},
  --         highlights = {},
  --       },
  --     }
  --
  --     vim.g.tundra_biome = 'arctic' -- 'arctic' or 'jungle'
  --     vim.opt.background = 'dark'
  --     vim.cmd 'colorscheme tundra'
  --   end,
  -- },
  { 'xiyaowong/transparent.nvim', opts = {} },

  -- Session management
  {
    'rmagatti/auto-session',
    lazy = false,

    config = function()
      vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
      require('auto-session').setup { suppressed_dirs = {} }
    end,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = {},
      session_lens = { load_on_setup = true },
      -- log_level = 'debug',
    },
  },

  -- FIXME: gotta fix auto folding when I have time.
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = 'kevinhwang91/promise-async',
  --   opts = {
  --     provider_selector = function(bufnr, filetype, buftype)
  --       print 'huuuh'
  --       return { 'indent' }
  --     end,
  --   },
  --   config = function()
  --    -- vim.o.foldcolumn = '1' -- '0' is not bad
  --     vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  --     vim.o.foldlevelstart = 99
  --     vim.o.foldenable = true
  --
  --     -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
  --     vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
  --     vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  --   end,
  -- },

  -- Git integration with Neogit
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },

  -- Better navigation with leap
  {
    'ggandor/leap.nvim',
    opts = {},
    init = function()
      require('leap').create_default_mappings()
    end,
  },

  -- File exploring with Oil
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },

  -- AI completion with Avante
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      provider = 'openai',
      openai = {
        model = 'gpt-4o-mini',
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
      'zbirenbaum/copilot.lua', -- for providers='copilot'
      -- {
      --   -- support for image pasting
      --   'HakonHarnes/img-clip.nvim',
      --   event = 'VeryLazy',
      --   opts = {
      --     -- recommended settings
      --     default = {
      --       embed_image_as_base64 = false,
      --       prompt_for_file_name = false,
      --       drag_and_drop = {
      --         insert_mode = true,
      --       },
      --       -- required for Windows users
      --       use_absolute_path = true,
      --     },
      --   },
      -- },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { 'markdown', 'Avante' },
        },
        ft = { 'markdown', 'Avante' },
      },
    },
  },
}
