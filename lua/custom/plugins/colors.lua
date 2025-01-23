return {
  { 'xiyaowong/transparent.nvim', opts = {} },

  { 'EdenEast/nightfox.nvim', priority = 1000 },

  -- other Color schemes
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
        -- on_highlights = function(hl, colors)
        --   -- hl.Telesco
        -- end,
      }

      vim.cmd.colorscheme 'solarized-osaka'
    end,
  },
  -- { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

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
}
